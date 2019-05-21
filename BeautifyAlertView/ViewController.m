//
//  ViewController.m
//  BeautifyAlertView
//
//  Created by Yaojia on 24/1/19.
//  Copyright © 2019 Yaojia. All rights reserved.
//

#import "ViewController.h"
#import "BeautifyAlertViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    BeautifyAlertViewController *vc = [BeautifyAlertViewController new];
    
//    [vc initWithIcon:[UIImage imageNamed:@"icon"] hint:@"To Report this post please weitr a description so we can review." style:StyleReport];
//    [self presentViewController:vc animated:NO completion:nil];
    
    [vc initWithIcon:[UIImage imageNamed:@"icon"] hint:@"Are you sure you want to delete your post?" style:StyleNormal];
    [vc.btnOk addTarget:self action:@selector(clickOk) forControlEvents:UIControlEventTouchUpInside];
    [vc.btnCancel addTarget:self action:@selector(clickCancel) forControlEvents:UIControlEventTouchUpInside];
//    [self presentViewController:vc animated:NO completion:nil];
    
}

-(void)clickOk{
    [self dismissViewControllerAnimated:NO completion:nil];
}

-(void)clickCancel{
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
