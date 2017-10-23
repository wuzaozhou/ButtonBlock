//
//  ViewController.m
//  ButtonBlock
//
//  Created by 吴灶洲 on 2017/10/21.
//  Copyright © 2017年 吴灶洲. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+KKButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_btn addEventHandle:^{
        NSLog(@"点击按钮");
    } forControlEVents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
