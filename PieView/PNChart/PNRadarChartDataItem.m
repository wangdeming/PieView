//
//  PNRadarChartDataItem.m
//  PNChartDemo
//
//  Created by 王德明 on 2016/08/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "PNRadarChartDataItem.h"

@implementation PNRadarChartDataItem

+ (instancetype)dataItemWithValue:(CGFloat)value
                      description:(NSString *)description {
    PNRadarChartDataItem *item = [PNRadarChartDataItem new];
    item.value = value;
    item.textDescription = description;
    return item;
}

- (void)setValue:(CGFloat)value {
    if (value<0) {
        _value = 0;
        NSLog(@"Value value can not be negative");
    }
    _value = value;
}

@end
