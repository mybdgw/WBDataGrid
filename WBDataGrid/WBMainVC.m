//
//  WBMainVC.m
//  WBDataGrid
//
//  Created by dylan_lwb_ on 15/3/16.
//  Copyright (c) 2015年 dylan_lwb_. All rights reserved.
//

#import "WBMainVC.h"
#import "WBDataGridView.h"

@interface WBMainVC ()

@end

@implementation WBMainVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat margin = 10.f;
    CGFloat width = self.view.frame.size.width - 2*margin;
    
    // - 添加表格 - 两列
    WBDataGridView *DataGrid = [[WBDataGridView alloc] initWithFrame:CGRectMake(margin, 4*margin , width, 0)
                                                        andColumnsWidths:@[@(width*0.4), @(width*0.6)]];
    
    DataGrid.roundCorner = YES;
    
    [DataGrid addRecord:@[@"姓名", @"dylan_lwb_"]];
    [DataGrid addRecord:@[@"性别", @"男"]];
    [DataGrid addRecord:@[@"电话", @"110119120"]];
    [DataGrid addRecord:@[@"邮箱", @"dylan_lwb@163.com"]];
    
    [self.view addSubview:DataGrid];
    
    // - 添加表格 - 多列
    WBDataGridView *MoreDataGrid = [[WBDataGridView alloc] initWithFrame:CGRectMake(margin, CGRectGetMaxY(DataGrid.frame) + 2*margin , width, 0)
                                                            andColumnsWidths:@[@(width*0.2), @(width*0.2), @(width*0.2), @(width*0.4)]];
    
    MoreDataGrid.roundCorner = YES;
    
    [MoreDataGrid addRecord:@[@"姓名", @"姓名", @"姓名", @"dylan_lwb_"]];
    [MoreDataGrid addRecord:@[@"性别", @"性别", @"性别", @"男"]];
    [MoreDataGrid addRecord:@[@"电话", @"电话", @"电话", @"110119120"]];
    [MoreDataGrid addRecord:@[@"邮箱", @"邮箱", @"邮箱", @"dylan_lwb@163.com"]];
    
    [self.view addSubview:MoreDataGrid];

}

@end
