//
//  OKLogisticModel.m
//  OKLogisticsInformation
//
//  Created by Oragekk on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "OKLogisticModel.h"
#import "OKConfigFile.h"

@interface OKLogisticModel ()

@property (assign, nonatomic)CGFloat tempHeight;
@end

@implementation OKLogisticModel

- (CGFloat)height {
    
    if (_tempHeight == 0) {
        
        NSDictionary * dict=[NSDictionary dictionaryWithObject: [UIFont systemFontOfSize:12] forKey:NSFontAttributeName];
        
        CGRect rect=[self.dsc boundingRectWithSize:CGSizeMake(OKScreenWidth - ok_leftSpace - 2*ok_rightSpace, CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        
        _tempHeight = rect.size.height + 50;;
    }
    
    return _tempHeight;
}
@end
