//
//  Created by 王德明 on 2016/08/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, PNLineChartPointStyle) {
    PNLineChartPointStyleNone = 0,
    PNLineChartPointStyleCircle = 1,
    PNLineChartPointStyleSquare = 3,
    PNLineChartPointStyleTriangle = 4
};

@class PNLineChartDataItem;

typedef PNLineChartDataItem *(^LCLineChartDataGetter)(NSUInteger item);

@interface PNLineChartData : NSObject

@property (strong) UIColor *color;
@property (nonatomic) CGFloat alpha;
@property NSUInteger itemCount;
@property (copy) LCLineChartDataGetter getData;
@property (strong, nonatomic) NSString *dataTitle;

@property (nonatomic) BOOL showPointLabel;
@property (nonatomic) UIColor *pointLabelColor;
@property (nonatomic) UIFont *pointLabelFont;
@property (nonatomic) NSString *pointLabelFormat;

@property (nonatomic, assign) PNLineChartPointStyle inflexionPointStyle;

/**
 * If PNLineChartPointStyle is circle, this returns the circle's diameter.
 * If PNLineChartPointStyle is square, each point is a square with each side equal in length to this value.
 */
@property (nonatomic, assign) CGFloat inflexionPointWidth;

@property (nonatomic, assign) CGFloat lineWidth;

@end
