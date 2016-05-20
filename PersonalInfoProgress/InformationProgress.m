//
//  InformationProgress.m
//  PersonalInfoProgress
//
//  Created by andson-zhw on 16/5/19.
//  Copyright © 2016年 andson. All rights reserved.
//

#import "InformationProgress.h"

@interface InformationProgress ()
@property(nonatomic,strong)UIView *progressView;
@end


@implementation InformationProgress


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //CGRect drawRect = CGRectMake(0, 0, <#CGFloat width#>, <#CGFloat height#>)
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rect];
    [[UIColor blackColor] setStroke];
    [path setLineWidth:1];
    [path stroke];
    
}


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        //self.progressView = [[UIView alloc]initWithFrame:CGRectMake(1, 1, frame.size.width-2, frame.size.height-2)];
        self.progressView = [[UIView alloc]init];
        self.progressView.frame = CGRectMake(0.5, 0.5, 0, frame.size.height-1);
        self.progressView.backgroundColor = [UIColor colorWithRed:105.0/255. green:202.0/255. blue:63.0/255. alpha:1.0];
        [self addSubview:self.progressView];
    }
    
    return self;
}

-(void)setProgress:(CGFloat)progress{
    _progress = progress;
    //dosomething
    if (_progress>1.0) {
        _progress = 1.0;
        progress = 1.0;
    }
    [UIView animateWithDuration:progress * 0.5 animations:^{
        self.progressView.frame = CGRectMake(0.5, 0.5, progress * (self.frame.size.width -1), self.frame.size.height-1);
    }];
    
//    [UIView animateWithDuration:progress * 0.5 animations:^{
//        self.progressView.frame = CGRectMake(0.5, 0.5, progress * (self.frame.size.width -1), self.frame.size.height-1);
//    } completion:^(BOOL finished) {
//        
//    }];
   
    
}
@end
