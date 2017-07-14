//
//  OKLogisticCell.m
//  OKLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "OKLogisticCell.h"
#import "OKConfigFile.h"
#import "OKTableCellContentView.h"

@interface OKLogisticCell ()

@property (strong, nonatomic)OKTableCellContentView *customView;
@end
@implementation OKLogisticCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self setupUI];
    }
    
    return self;
}

- (void)reloadDataWithModel:(OKLogisticModel*)model {
    
    [self.customView reloadDataWithModel:model];
}

- (void)setHasUpLine:(BOOL)hasUpLine {
    
    self.customView.hasUpLine = hasUpLine;
}

- (void)setHasDownLine:(BOOL)hasDownLine {
    
    self.customView.hasDownLine = hasDownLine;
}

- (void)setCurrented:(BOOL)currented {
    
    self.customView.currented = currented;
}

- (void)setupUI {
    
    OKTableCellContentView *custom = [[OKTableCellContentView alloc]init];
    [self addSubview:custom];
    self.customView = custom;
    
    custom.currented = NO;
    custom.hasUpLine = YES;
    custom.hasDownLine = YES;
    [custom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end
