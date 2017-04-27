//
//  PNScatterChartDataItem.h
//  PNChartDemo
//
//  Created by 王德明 on 2016/08/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PNScatterChartDataItem : NSObject

+ (PNScatterChartDataItem *)dataItemWithX:(CGFloat)x AndWithY:(CGFloat)y;

@property (readonly) CGFloat x; // should be within the x range
@property (readonly) CGFloat y; // should be within the y range

@end
