//
//  PlaceholderTextView.m
//  UTextView
//
//  Created by 高广校 on 15/7/17.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "PlaceholderTextView.h"

@interface PlaceholderTextView ()
@property(nonatomic,strong)UILabel *tipName;
@end


@implementation PlaceholderTextView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(UILabel *)tipName{
    if (!_tipName) {
        _tipName = [UILabel new];
    }
    _tipName.text = @"测试";
//    _tipName.textColor = [UIColor lightGrayColor];
    return _tipName;
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self awakeFromNib];
    }
    return self;
}
-(void)awakeFromNib{
    [super awakeFromNib];
    [self addobserver];
}
-(void)addobserver{
    
//    NSLog(@"%f",CGRectGetWidth(self.frame));
    
    [self addSubview:self.tipName];
    
    
    _tipName.frame = CGRectMake(10, 0, 90, 20);
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textdidBeginEditing:) name:UITextViewTextDidBeginEditingNotification object:self];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textdidChangeEditing:) name:UITextViewTextDidChangeNotification object:self];
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
//-(void)textdidBeginEditing:(NSNotification *)not{
//    if ([super.text isEqualToString:_placehoder]) {
////        super.text = @"";
////        [super setTextColor:[UIColor blackColor]];
//    }
//}

-(void)textdidChangeEditing:(NSNotification *)not{
    if (super.text.length==0) {
        _tipName.hidden = NO;
    }else{
        _tipName.hidden = YES;

    }
}
-(void)setPlacehoder:(NSString *)placehoder{
    _placehoder = placehoder;
    _tipName.text = _placehoder;
    [self textdidChangeEditing:nil];
}
//-(NSString *)text{
//    NSString *text = [super text];
//    if ([text isEqualToString:_placehoder]) {
//        return @"";
//    }else{
//        return text;
//    }
//}

@end
