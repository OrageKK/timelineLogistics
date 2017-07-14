//
//  DWQLogisticCell.h
//  DWQLogisticsInformation
//
//  Created by Oragekk on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OKLogisticModel.h"
@interface OKLogisticCell : UITableViewCell

@property (assign, nonatomic) BOOL hasUpLine;
@property (assign, nonatomic) BOOL hasDownLine;
@property (assign, nonatomic) BOOL currented;

- (void)reloadDataWithModel:(OKLogisticModel*)model;
@end
