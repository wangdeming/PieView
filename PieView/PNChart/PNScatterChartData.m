//
//  PNScatterChartData.m
//  PNChartDemo
//
//  Created by 王德明 on 2016/08/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "PNScatterChartData.h"

@implementation PNScatterChartData

- (id)init
{
    self = [super init];
    if (self) {
        [self setupDefaultValues];
    }
    
    return self;
}

- (void)setupDefaultValues
{
    _inflexionPointStyle = PNScatterChartPointStyleCircle;
    _fillColor = [UIColor grayColor];
    _strokeColor = [UIColor clearColor];
    _size = 3 ;
}

@end
