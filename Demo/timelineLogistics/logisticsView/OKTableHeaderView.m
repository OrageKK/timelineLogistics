//
//  OKTableHeaderView.m
//  OKLogisticsInformation
//
//  Created by Oragekk on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "OKTableHeaderView.h"

#import "OKConfigFile.h"

@interface OKTableHeaderView ()
@property (nonatomic,strong) UIImageView *goodsPic;
@property (nonatomic,strong) UILabel *type;
@property (strong, nonatomic) UILabel *numLabel;
@property (strong, nonatomic) UILabel *comLabel;
@property (strong, nonatomic) YYLabel *phoneLabel;
@property (nonatomic,strong) UIWebView *phoneCallWebView;
@end
#define GRAY_TITLECOLOR 0x9D9D9D
@implementation OKTableHeaderView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setPhone:(NSString *)phone {
    _phone = phone;
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"官方电话：%@",phone]];
    NSRange range = [[NSString stringWithFormat:@"官方电话：%@",phone] rangeOfString: phone];
    [text addAttribute:NSForegroundColorAttributeName value:nckColor(GRAY_TITLECOLOR) range:NSMakeRange(0, 5)];
    [text setTextHighlightRange:range
                             color:nckColor(0x59A3E8)
                   backgroundColor:[UIColor whiteColor]
                         tapAction:^(UIView * _Nonnull containerView, NSAttributedString * _Nonnull text, NSRange range, CGRect rect) {
                             [self callPhoneThree:phone];
                         }];
    self.phoneLabel.attributedText = text;
}

- (void)setNumber:(NSString *)number {
    _number = number;
    self.numLabel.text = [NSString stringWithFormat:@"运单编号：%@",number];
}

- (void)setCompany:(NSString *)company {
    _company = company;
    self.comLabel.text = [NSString stringWithFormat:@"承运公司：%@",company];
}
- (void)setWltype:(NSString *)wltype {
    _wltype = wltype;
        
    NSMutableAttributedString *wlStr = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"物流状态：%@",wltype]];
    NSRange range = [[NSString stringWithFormat:@"物流状态：%@",wltype] rangeOfString: wltype];
    [wlStr addAttribute:NSForegroundColorAttributeName value:nckColor(0x07A628) range:range];
    self.type.attributedText = wlStr;
}
- (void)setImageUrl:(NSString *)imageUrl {
    _imageUrl = imageUrl;
//    [self.goodsPic sd_setImageWithURL:[NSURL URLWithString:imageUrl]];
    
}
- (void)setupUI {
    self.backgroundColor=[UIColor whiteColor];
    
    self.goodsPic.frame=CGRectMake(15, 15, 85,85);
    self.goodsPic.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"hh" ofType:@"jpg"]];
    [self addSubview:self.goodsPic];
    
    self.type =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.goodsPic.frame)+14,12, 20*Gap, 2*Gap)];
    self.type.font = [UIFont systemFontOfSize:14];
    [self addSubview:self.type];
    
    
    self.numLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.type.frame.origin.x ,CGRectGetMaxY(self.type.frame)+5, 20*Gap, 2*Gap)];
    self.numLabel.font = [UIFont systemFontOfSize:12];
    self.numLabel.textColor = nckColor(GRAY_TITLECOLOR);
    self.numLabel.text = @"运单编号:";
    [self addSubview:self.numLabel];
    
    
    self.comLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.numLabel.frame.origin.x ,CGRectGetMaxY(self.numLabel.frame)+5, 20*Gap, 2*Gap)];
    self.comLabel.font = [UIFont systemFontOfSize:12];
    self.comLabel.textColor = nckColor(GRAY_TITLECOLOR);
    self.comLabel.text = @"承运公司:";
    [self addSubview:self.comLabel];
    
    
    
    
    self.phoneLabel = [[YYLabel alloc]initWithFrame:CGRectMake(self.comLabel.frame.origin.x ,CGRectGetMaxY(self.comLabel.frame)+5, 20*Gap, 2*Gap)];
    self.phoneLabel.font = [UIFont systemFontOfSize:12];
    self.phoneLabel.textColor = nckColor(GRAY_TITLECOLOR);
    self.phoneLabel.text = @"官方电话:";
    [self addSubview:self.phoneLabel];
    
    UILabel *line=[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.goodsPic.frame)+15, OKScreenWidth, 8)];
    line.backgroundColor=nckColor(0xf1f1f1);
    [self addSubview:line];
    
}
#pragma mark 懒加载
-(UIImageView *)goodsPic{
    
    if(!_goodsPic) {
        
        _goodsPic =[[UIImageView alloc]init];
        
    }
    
    return _goodsPic;
    
}
-(UILabel *)type{
    
    if(!_type) {
        
        _type =[[UILabel alloc]init];
        
    }
    
    return _type;
    
}
-(UILabel *)numLabel{
    
    if(!_numLabel) {
        
        _numLabel =[[UILabel alloc]init];
        
    }
    
    return _numLabel;
    
}
-(UILabel *)comLabel{
    
    if(!_comLabel) {
        
        _comLabel =[[UILabel alloc]init];
        
    }
    
    return _comLabel;
    
}
-(YYLabel *)phoneLabel{
    
    if(!_phoneLabel) {
        
        _phoneLabel =[YYLabel new];
        
    }
    
    return _phoneLabel;
    
}
- (void)callPhoneThree:(NSString *)phoneNum{
    /*--------拨号方法三-----------*/
    NSURL *phoneURL = [NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",phoneNum]];
    if ( !_phoneCallWebView ) {
        
        _phoneCallWebView = [[UIWebView alloc] initWithFrame:CGRectZero];// 这个webView只是一个后台的容易 不需要add到页面上来  效果跟方法二一样 但是这个方法是合法的
    }
    [_phoneCallWebView loadRequest:[NSURLRequest requestWithURL:phoneURL]];
}
@end
