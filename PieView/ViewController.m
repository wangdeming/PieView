//
//  ViewController.m
//  PieView
//
//  Created by 赵诣 on 16/2/3.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "PNChart.h"
#import "CONST.h"
@interface ViewController ()
@property (nonatomic,strong) PNPieChart *pieChart;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createPieView1];
    [self createPieView2];
}

-(void)createPieView1
{
    //设置图内饼的颜色，饼对应的百分比和饼内外的描述
    NSArray *items = @[[PNPieChartDataItem dataItemWithValue:30 color:[UIColor redColor] description:@
                        "我是是是是是是是是是是是是是是是是是是是是是是30%"],
                       [PNPieChartDataItem dataItemWithValue:50 color:[UIColor yellowColor] description:@"我是50%"],
                       [PNPieChartDataItem dataItemWithValue:20 color:[UIColor cyanColor] description:@"我是20%"],
                       [PNPieChartDataItem dataItemWithValue:20 color:[UIColor greenColor] description:@"我是20%"]
                       ];
    
    self.pieChart = [[PNPieChart alloc] initWithFrame:CGRectMake(20, 50, 200.0, 200.0) items:items];
    //背景色
    self.pieChart.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.2];
    //图内描述文字颜色
    self.pieChart.descriptionTextColor = [UIColor whiteColor];
    //图内文字字体大小
    self.pieChart.descriptionTextFont  = [UIFont fontWithName:@"Avenir-Medium" size:11.0];
    //饼内文字阴影颜色
    self.pieChart.descriptionTextShadowColor = [UIColor magentaColor];
    //饼内是否不显示 %
    self.pieChart.showAbsoluteValues = NO;
    //是否饼图内只显示数值不显示文字
    self.pieChart.showOnlyValues = NO;
    
    //设置饼半径及粗细
    self.pieChart.outerCircleRadius = CGRectGetWidth(self.pieChart.bounds) / 2;//外圈大半径
    self.pieChart.innerCircleRadius = CGRectGetWidth(self.pieChart.bounds) / 2 - 10;//内圈小半径
    
    //显示
    [self.pieChart strokeChart];
    
    self.pieChart.legendStyle = PNLegendItemStyleStacked;
    //底部提示框文字字体大小
    self.pieChart.legendFont = [UIFont boldSystemFontOfSize:12.0f];
    
    //文字描述的view
    //参数：限制最大宽度，满了自动换行
    UIView *legend = [self.pieChart getLegendWithMaxWidth:100];
    [legend setFrame:CGRectMake(270, 50, 110.0, 200.0)];
    legend.backgroundColor = [UIColor purpleColor];
    
    //设置父视图
    [self.view addSubview:legend];
    [self.view addSubview:self.pieChart];
}

-(void)createPieView2
{
    //设置图内饼的颜色，饼对应的百分比和饼内外的描述
    NSArray *items = @[[PNPieChartDataItem dataItemWithValue:100 color:[UIColor magentaColor] description:@
                        "我是是是是是是是是是是是是是是是是是是是是是是no.1"],
                       [PNPieChartDataItem dataItemWithValue:50 color:[UIColor greenColor] description:@"我是no.2"],
                       [PNPieChartDataItem dataItemWithValue:20 color:[UIColor purpleColor] description:@"我是no.3"],
                       [PNPieChartDataItem dataItemWithValue:20 color:[UIColor blueColor] description:@"我是no.4"]
                       ];
    
    self.pieChart = [[PNPieChart alloc] initWithFrame:CGRectMake(20, 300, 200.0, 200.0) items:items];
    //背景色
    self.pieChart.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
    //图内描述文字颜色
    self.pieChart.descriptionTextColor = [UIColor grayColor];
    //图内文字字体大小
    self.pieChart.descriptionTextFont  = [UIFont fontWithName:@"Avenir-Medium" size:11.0];
    //饼内文字阴影颜色
    self.pieChart.descriptionTextShadowColor = [UIColor orangeColor];
    //饼内是否不显示 %
    self.pieChart.showAbsoluteValues = NO;
    //是否饼图内只显示数值不显示文字
    self.pieChart.showOnlyValues = NO;
    
    //设置饼半径及粗细
    self.pieChart.outerCircleRadius = CGRectGetWidth(self.pieChart.bounds) / 2;//外圈大半径
    self.pieChart.innerCircleRadius = CGRectGetWidth(self.pieChart.bounds) / 6;//内圈小半径
    
    //显示
    [self.pieChart strokeChart];
    
    self.pieChart.legendStyle = PNLegendItemStyleStacked;
    //底部提示框文字字体大小
    self.pieChart.legendFont = [UIFont boldSystemFontOfSize:12.0f];
    
    //文字描述的view
    //参数：限制最大宽度，满了自动换行
    UIView *legend = [self.pieChart getLegendWithMaxWidth:100];
    [legend setFrame:CGRectMake(270, 300, 110.0, 200.0)];
    legend.backgroundColor = [UIColor lightGrayColor];
    
    //设置父视图
    [self.view addSubview:legend];
    [self.view addSubview:self.pieChart];
}

@end
