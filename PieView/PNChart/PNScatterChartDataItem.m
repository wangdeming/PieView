//
//  PNScatterChartDataItem.m
//  PNChartDemo
//
//  Created by 王德明 on 2016/08/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "PNScatterChartDataItem.h"

@interface PNScatterChartDataItem ()

- (id)initWithX:(CGFloat)x AndWithY:(CGFloat)y;

@property (readwrite) CGFloat x; // should be within the x range
@property (readwrite) CGFloat y; // should be within the y range

@end

@implementation PNScatterChartDataItem

+ (PNScatterChartDataItem *)dataItemWithX:(CGFloat)x AndWithY:(CGFloat)y
{
    return [[PNScatterChartDataItem alloc] initWithX:x AndWithY:y];
}

- (id)initWithX:(CGFloat)x AndWithY:(CGFloat)y
{
    if ((self = [super init])) {
        self.x = x;
        self.y = y;
    }
    
    return self;
}

@end
