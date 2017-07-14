//
//  NSString+phone.h
//  timelineLogistics
//
//  Created by 黄坤 on 2017/7/14.
//  Copyright © 2017年 黄坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (phone)
#pragma mark - 电话验证
+ (BOOL)isMobilePhoneOrtelePhone:(NSString *)mobileNum;
@end
