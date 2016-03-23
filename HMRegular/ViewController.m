//
//  ViewController.m
//  HMRegular
//
//  Created by aahazz on 16/3/23.
//  Copyright © 2016年 侯猛. All rights reserved.
//

#import "ViewController.h"
#import "HMRegular.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}
- (IBAction)clickBtn:(UIButton *)sender
{
    
    NSString *msg;
    BOOL yhm = [HMRegular validateStrWithStr:self.yhm.text];
    BOOL xm = [HMRegular validateRealName:self.xm.text];
    BOOL yx = [HMRegular validateEmail:self.yx.text];
    BOOL sjh = [HMRegular validatePhone:self.sjh.text];
    BOOL sfz = [HMRegular validateIDCardNumber:self.ss.text];
    if (!yhm) {
        msg = [NSString stringWithFormat:@"用户名验证失败\n"];
    }
    if (!xm) {
        msg = [NSString stringWithFormat:@"%@姓名验证失败\n",msg];
    }
    if (!yx) {
        msg = [NSString stringWithFormat:@"%@邮箱验证失败\n",msg];
    }
    if (!sjh) {
        msg = [NSString stringWithFormat:@"%@手机号验证失败\n",msg];
    }
    if (!sfz) {
        msg = [NSString stringWithFormat:@"%@身份证验证失败",msg];
    }
    
    
    BOOL is = ![msg isEqual:nil];
    
    
    if (is) {
        msg = @"验证成功";
    }
    
    if (self.yhm.text.length == 0 || self.xm.text.length == 0 ||self.yx.text.length == 0 ||self.sjh.text.length == 0 ||self.ss.text.length == 0) {
        msg = @"部分信息为空";
    }
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
