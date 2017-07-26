//
//  EllipsePageControl.h
//  EllipsePageControl
//
//  Created by cardlan_yuhuajun on 2017/7/26.
//  Copyright © 2017年 cardlan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EllipsePageControl : UIControl
@property(nonatomic) NSInteger numberOfPages;          //  多少分页点
@property(nonatomic) NSInteger currentPage;            //  当前点位置
@property(nonatomic) NSInteger controlSize;            //  点大小
@property(nonatomic) NSInteger controlSpacing;         //  点的间距 
@property(nonatomic,strong) UIColor *otherColor;       //  其他点颜色
@property(nonatomic,strong) UIColor *currentColor;     //  当前点颜色
@property(nonatomic,strong) UIImage *currentBkImg;     //  当前点背景颜色
@end
