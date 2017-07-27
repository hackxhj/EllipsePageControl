# 椭圆 长方形的 PageControl 自定义

```objc
@property(nonatomic) NSInteger numberOfPages;          //  多少分页点

@property(nonatomic) NSInteger currentPage;            //  当前点位置

@property(nonatomic) NSInteger controlSize;            //  点大小

@property(nonatomic) NSInteger controlSpacing;         //  点的间距 

@property(nonatomic,strong) UIColor *otherColor;       //  其他点颜色

@property(nonatomic,strong) UIColor *currentColor;     //  当前点颜色

@property(nonatomic,strong) UIImage *currentBkImg;     //  当前点背景颜色
```

使用例子：
### 支持pod导入
```ruby
pod 'EllipsePageControl','~> 0.0.3'
```


###  头文件引入

#import "EllipsePageControl.h"

### 定义
```objc
@property(nonatomic,strong) EllipsePageControl *myPageControl1;
```
### 使用

```objc
_myPageControl1 = [[EllipsePageControl alloc] init];

_myPageControl1.frame=CGRectMake(0, 80,[UIScreen mainScreen].bounds.size.width, 30);

_myPageControl1.numberOfPages = 6;

_myPageControl1.delegate=self;

[self.view addSubview:_myPageControl1];




### #pragma  mark EllipsePageControlDelegate。监听用户点击

-(void)ellipsePageControlClick:(EllipsePageControl *)pageControl index:(NSInteger)clickIndex{

}
```
#  看效果图  demo 详细使用

 <img src="https://raw.githubusercontent.com/hackxhj/EllipsePageControl/master/123.png" alt="show" title="show">
