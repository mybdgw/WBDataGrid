//
//  WBDataGridView.h
//  WBDataGrid
//
//  Created by dylan_lwb_ on 15/3/16.
//  Copyright (c) 2015年 dylan_lwb_. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const SwitchButtonString;

@interface WBDataGridView : UIView

@property (retain, nonatomic) NSArray *columnsWidths;
@property (assign, nonatomic) NSUInteger lastRowHeight;
@property (retain, nonatomic) UIImage *selectedImage;
@property (retain, nonatomic) UIImage *unselectedImage;
@property (assign, nonatomic) BOOL roundCorner;

- (id)initWithFrame:(CGRect)frame andColumnsWidths:(NSArray*)columns;
- (void)addRecord:(NSArray*)record;
- (NSUInteger)selectedIndex;

@end
