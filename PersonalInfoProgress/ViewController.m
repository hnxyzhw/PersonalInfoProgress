//
//  ViewController.m
//  PersonalInfoProgress
//
//  Created by andson-zhw on 16/5/19.
//  Copyright © 2016年 andson. All rights reserved.
//

#import "ViewController.h"
#import "InformationProgress.h"

@interface ViewController ()
@property(nonatomic,strong) InformationProgress *infoProgressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect progressRect = CGRectMake(20, 50, 200, 40);
    self.infoProgressView = [[InformationProgress alloc]initWithFrame:progressRect];
    [self.view addSubview:self.infoProgressView];
    self.infoProgressView.progress = 0.8;
    
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(50, 300, 50, 50);
    
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"changeProgress" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeProgerss:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)changeProgerss:(UIButton *)button{
    self.infoProgressView.progress  += (arc4random() % 4 + 1) * 0.1;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
