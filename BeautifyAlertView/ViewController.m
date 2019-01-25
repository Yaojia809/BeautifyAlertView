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
//    self.modalPresentationStyle = UIModalPresentationCurrentContext;
//    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    BeautifyAlertViewController *vc = [BeautifyAlertViewController new];
    
//    [vc initWithTitle:@"This is a title" subtitle:@"This is a subtitle" icon:[UIImage imageNamed:@"icon"]];
//    [self addChildViewController:vc];
//    [self presentViewController:vc animated:NO completion:nil];
//    [self.view addSubview:vc.view];
    
    
    [vc initWithIcon:[UIImage imageNamed:@"icon"] hint:@"Are you sure you want to delete your post?" style:StyleReport];
    [self presentViewController:vc animated:NO completion:nil];
    

}


@end
