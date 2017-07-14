//
//  OKLogisticsView.h
//  OKLogisticsInformation
//
//  Created by Oragekk on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OKTableHeaderView.h"
@interface OKLogisticsView : UIView

/**
 运单号码
 */
@property (copy, nonatomic)NSString *number;

/**
 承运公司
 */
@property (copy, nonatomic)NSString *company;

/**
 官方电话
 */
@property (copy, nonatomic)NSString *phone;

/**
 物流状态
 */
@property (nonatomic,copy) NSString * wltype;

/**
 图片url
 */
@property (nonatomic,copy) NSString * imageUrl;
@property (strong, nonatomic)NSArray *datas;
@property (nonatomic,strong) OKTableHeaderView *header ;
- (instancetype)initWithDatas:(NSArray*)array;
- (void)reloadDataWithDatas:(NSArray *)array;
@end
