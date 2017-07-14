//
//  DWQConfigFile.h
//  DWQLogisticsInformation
//
//  Created by Oragekk on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#ifndef OKConfigFile_h
#define OKConfigFile_h

#define OKScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define OKScreenHeight ([UIScreen mainScreen].bounds.size.height)

//R G B 颜色
#define OKRGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

//R G B A 颜色
#define OKRGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 \
alpha:(a)]
#define nckColor(rgb) [UIColor colorWithRed:((float)((rgb & 0xFF0000) >> 16))/255.0 green:((float)((rgb & 0xFF00) >> 8))/255.0 blue:((float)(rgb & 0xFF))/255.0 alpha:1.0]
static CGFloat Gap =10;
static CGFloat ok_leftSpace = 50.0;
static CGFloat ok_rightSpace = 10.0;

#import "Masonry.h"
#import "YYKit.h"
#import "NSString+phone.h"
#endif 
