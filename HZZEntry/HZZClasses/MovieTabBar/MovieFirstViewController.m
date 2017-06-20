//
//  FirstViewController.m
//  MaoYan
//
//  Created by 湛家荣 on 15/8/29.
//  Copyright (c) 2015年 湛家荣. All rights reserved.
//

#import "MovieFirstViewController.h"
#import "HZZRefreshHeader.h"
#import "SDCycleScrollView.h"

@interface MovieFirstViewController () <UITableViewDelegate,UITableViewDataSource,SDCycleScrollViewDelegate>

@property (nonatomic, strong) UITableView * tableView;
// collectionView
@property (nonatomic, strong)  SDCycleScrollView *cycleScrollView;


@end

@implementation MovieFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, self.view.bounds.size.height - 64-49) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    self.tableView.ny_header = [[NYRefreshHeader alloc]initWithRefreshingTarget:self refreshingAction:@selector(loadData)];
    [self.view addSubview:self.tableView];
    
    _headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KUIScreenWidth, 636)];
    _headerView.backgroundColor = [UIColor greenColor];
    self.tableView.tableHeaderView = _headerView;


    // 初始化轮播图
    [self setupBanerScrollview];
    // 设置tableview的偏移量通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setTableViewContenInset) name:@"kSetTableViewContentInsetNSNotification" object:nil];

}

#pragma mark -设置tableview的偏移量通知

- (void)setTableViewContenInset {
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    
    [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:NO];
    
    
}

#pragma mark -初始化轮播图

- (void)setupBanerScrollview {
    
    NSArray *imageNames = @[@"1",
                            @"2",
                            @"3",
                            @"4",
                            @"4",
                            @"5",
                            @"6",
                            @"7"
                            ];
    
    // 本地加载 --- 创建不带标题的图片轮播器
    self.cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, KUIScreenWidth, 180) shouldInfiniteLoop:YES imageNamesGroup:imageNames];
    self.cycleScrollView.delegate = self;
    self.cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    self.cycleScrollView.currentPageDotColor = [UIColor orangeColor];
    [_headerView addSubview:self.cycleScrollView];
    self.cycleScrollView.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
}


- (void)loadData
{
    NSLog(@"加载中");
    
    [self performSelector:@selector(test) withObject:nil afterDelay:2.0f];
}

- (void)test{
    NSLog(@"结束加载");
    [self.tableView.ny_header endRefreshing];
}

#pragma mark - UITableViewDataSource
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    if(tableView == self.tableView && section == 0){
        return 44;
    }else{
        return 0;
    }
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    cell.backgroundColor = [UIColor orangeColor];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
