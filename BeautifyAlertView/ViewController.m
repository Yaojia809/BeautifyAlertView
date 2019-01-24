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
    
    [vc initWithTitle:@"This is a title" subtitle:@"This is a subtitle" icon:[UIImage imageNamed:@"icon"]];
    [self presentViewController:vc animated:NO completion:nil];
}


@end
