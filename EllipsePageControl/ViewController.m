//
//  ViewController.m
//  EllipsePageControl
//
//  Created by cardlan_yuhuajun on 2017/7/26.
//  Copyright © 2017年 cardlan. All rights reserved.
//

#import "ViewController.h"
#import "EllipsePageControl.h"

@interface ViewController ()<UIScrollViewDelegate>
@property(nonatomic,strong) UIPageControl *pageControl;
@property(nonatomic,strong) EllipsePageControl *myPageControl1;
@property(nonatomic,strong) EllipsePageControl *myPageControl2;
@property(nonatomic,strong) EllipsePageControl *myPageControl3;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    _myPageControl1 = [[EllipsePageControl alloc] init];
    _myPageControl1.frame=CGRectMake(0, 80,[UIScreen mainScreen].bounds.size.width, 30);
    _myPageControl1.numberOfPages = 6;
    [self.view addSubview:_myPageControl1];
    
    
    _myPageControl2 = [[EllipsePageControl alloc] initWithFrame:CGRectMake(0, 280,[UIScreen mainScreen].bounds.size.width, 30)];
    _myPageControl2.numberOfPages = 6;
    _myPageControl2.otherColor=[UIColor grayColor];
    _myPageControl2.currentColor=[UIColor orangeColor];
    [self.view addSubview:_myPageControl2];
    
    
    
    _myPageControl3 = [[EllipsePageControl alloc] initWithFrame:CGRectMake(0, 480,[UIScreen mainScreen].bounds.size.width, 30)];
    _myPageControl3.numberOfPages = 6;
    _myPageControl3.otherColor=[UIColor grayColor];
    _myPageControl3.controlSize=12;
    _myPageControl3.currentColor=[UIColor brownColor];
    _myPageControl3.controlSpacing=15;
    _myPageControl3.currentBkImg=[UIImage imageNamed:@"bkimg"];
    [self.view addSubview:_myPageControl3];  
    
    
    
    
    
    UIScrollView *scrollView0=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
    scrollView0.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 150);
    scrollView0.delegate=self;
    scrollView0.pagingEnabled = YES;
    scrollView0.tag=1001;
    [self.view addSubview:scrollView0];
  
    UIScrollView *scrollView1=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 150)];
    scrollView1.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 150);
    scrollView1.delegate=self;
    scrollView1.pagingEnabled = YES;
    scrollView1.tag=1002;
    [self.view addSubview:scrollView1];
    
    UIScrollView *scrollView2=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 400, [UIScreen mainScreen].bounds.size.width, 150)];
    scrollView2.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 150);
    scrollView2.delegate=self;
    scrollView2.pagingEnabled = YES;
    scrollView2.tag=1003;
    [self.view addSubview:scrollView2];
    

    
}
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSInteger currentPage = targetContentOffset->x / [UIScreen mainScreen].bounds.size.width;

    if(scrollView.tag==1001){
        self.myPageControl1.currentPage = currentPage;
    }else if(scrollView.tag==1002){
        self.myPageControl2.currentPage = currentPage;

    }else{
        self.myPageControl3.currentPage = currentPage;

    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
