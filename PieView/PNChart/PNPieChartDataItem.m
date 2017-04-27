//
//  PNPieChartDataItem.m
//  PNChartDemo
//
//  Created by 王德明 on 2016/08/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "PNPieChartDataItem.h"
#import <UIKit/UIKit.h>

@implementation PNPieChartDataItem


+ (instancetype)dataItemWithValue:(CGFloat)value
                            color:(UIColor*)color{
	PNPieChartDataItem *item = [PNPieChartDataItem new];
	item.value = value;
	item.color  = color;
	return item;
}

+ (instancetype)dataItemWithValue:(CGFloat)value
                            color:(UIColor*)color
                      description:(NSString *)description {
	PNPieChartDataItem *item = [PNPieChartDataItem dataItemWithValue:value color:color];
	item.textDescription = description;
	return item;
}

- (void)setValue:(CGFloat)value{
    NSAssert(value >= 0, @"value should >= 0");
    if (value != _value){
        _value = value;
    }
}

@end
