//
//  ViewController.m
//  EllipsePageControl
//
//  Created by cardlan_yuhuajun on 2017/7/26.
//  Copyright © 2017年 cardlan. All rights reserved.
//

#import "ViewController.h"
#import "EllipsePageControl.h"

@interface ViewController ()<UIScrollViewDelegate,EllipsePageControlDelegate>
@property(nonatomic,strong) UIPageControl *pageControl;
@property(nonatomic,strong) EllipsePageControl *myPageControl1;
@property(nonatomic,strong) EllipsePageControl *myPageControl2;
@property(nonatomic,strong) EllipsePageControl *myPageControl3;

@property(nonatomic,strong) UIScrollView *scrollView0;
@property(nonatomic,strong) UIScrollView *scrollView1;
@property(nonatomic,strong) UIScrollView *scrollView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 

    
    
    
    
    
    _scrollView0=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
    _scrollView0.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 150);
    _scrollView0.delegate=self;
    _scrollView0.pagingEnabled = YES;
    _scrollView0.tag=1000;
     [self.view addSubview:_scrollView0];
  
    _scrollView1=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 150)];
    _scrollView1.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 150);
    _scrollView1.delegate=self;
    _scrollView1.pagingEnabled = YES;
    _scrollView1.tag=1001;
    [self.view addSubview:_scrollView1];
    
    _scrollView2=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 400, [UIScreen mainScreen].bounds.size.width, 150)];
    _scrollView2.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 150);
    _scrollView2.delegate=self;
    _scrollView2.pagingEnabled = YES;
    _scrollView2.tag=1002;
    [self.view addSubview:_scrollView2];
    
    
    _myPageControl1 = [[EllipsePageControl alloc] init];
    _myPageControl1.frame=CGRectMake(0, 80,[UIScreen mainScreen].bounds.size.width, 30);
    _myPageControl1.numberOfPages = 6;
    _myPageControl1.delegate=self;
    _myPageControl1.tag=7777;
    [self.view addSubview:_myPageControl1];
    
    
    _myPageControl2 = [[EllipsePageControl alloc] initWithFrame:CGRectMake(0, 280,[UIScreen mainScreen].bounds.size.width, 30)];
    _myPageControl2.numberOfPages = 6;
    _myPageControl2.otherColor=[UIColor grayColor];
    _myPageControl2.currentColor=[UIColor orangeColor];
    _myPageControl2.delegate=self;
    _myPageControl2.currentControlSize=CGSizeMake(30, 6);
    _myPageControl2.tag=8888;
     [self.view addSubview:_myPageControl2];
    
    
    
    _myPageControl3 = [[EllipsePageControl alloc] initWithFrame:CGRectMake(0, 480,[UIScreen mainScreen].bounds.size.width, 30)];
    _myPageControl3.numberOfPages = 6;
    _myPageControl3.currentControlSize=CGSizeMake(30, 6);
    _myPageControl3.controlSpacing=15;
 //   _myPageControl3.currentBkImg=[UIImage imageNamed:@"bkimg"];
    _myPageControl3.delegate=self;
    _myPageControl3.tag=9999;
    [self.view addSubview:_myPageControl3];

    
}
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSInteger currentPage = targetContentOffset->x / [UIScreen mainScreen].bounds.size.width;

    if(scrollView.tag==1000){
        self.myPageControl1.currentPage = currentPage;
    }else if(scrollView.tag==1001){
        self.myPageControl2.currentPage = currentPage;

    }else{
        self.myPageControl3.currentPage = currentPage;

    }
}

#pragma  mark EllipsePageControlDelegate。监听用户点击
-(void)ellipsePageControlClick:(EllipsePageControl *)pageControl index:(NSInteger)clickIndex{
    
    NSLog(@"%ld",clickIndex);
    if(pageControl.tag==1000)
    {
        
        CGPoint position = CGPointMake([UIScreen mainScreen].bounds.size.width * clickIndex, 150);
        [_scrollView0 setContentOffset:position animated:YES];

    }else if(pageControl.tag==1001){
        CGPoint position = CGPointMake([UIScreen mainScreen].bounds.size.width * clickIndex, 150);
        [_scrollView1 setContentOffset:position animated:YES];
    }else{
        CGPoint position = CGPointMake([UIScreen mainScreen].bounds.size.width * clickIndex, 150);
        [_scrollView2 setContentOffset:position animated:YES];

    }
}

- (IBAction)go:(id)sender {
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
