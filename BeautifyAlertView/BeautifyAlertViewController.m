//
//  BeautifyAlertViewController.m
//  BeautifyAlertView
//
//  Created by Yaojia on 24/1/19.
//  Copyright © 2019 Yaojia. All rights reserved.
//

#import "BeautifyAlertViewController.h"

@interface BeautifyAlertViewController ()
@property UIView *viewAlert;
@property UIImageView *imgIcon;
@property UILabel *lblTitle;
@property UILabel *lblSubtitle;
@property UITextView *textViewContent;
@property UIButton *btnOk;
@property UIButton *btnCancel;
@end

@implementation BeautifyAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)initUI{
    // UI
    // background
    
    // alert view
    self.viewAlert = [[UIView alloc] initWithFrame:CGRectMake(9, 175, 357, 318)];
    [self.view addSubview:self.viewAlert];
    
    // icon
    self.imgIcon = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2, 20, 100, 100)];
    [self.viewAlert addSubview:self.imgIcon];
    
    // title
    self.lblTitle = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, 130, 300, 40)];
    self.lblTitle.font = [UIFont fontWithName:@"AvenirNext-Medium" size:45.0f];
    self.lblTitle.textAlignment = NSTextAlignmentCenter;
    [self.viewAlert addSubview:self.lblTitle];
    
    // subtitle
    self.lblSubtitle = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-280)/2, 180, 280, 80)];
    self.lblSubtitle.font = [UIFont fontWithName:@"AvenirNext-Medium" size:25.0f];
    self.lblSubtitle.textAlignment = NSTextAlignmentCenter;
    self.lblSubtitle.numberOfLines = 3;
    [self.viewAlert addSubview:self.lblSubtitle];
    
    // textview
    self.textViewContent = [[UITextView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-280)/2, 270, 280, 100)];
    self.textViewContent.font = [UIFont fontWithName:@"AvenirNext" size:25.0f];
    self.textViewContent.textAlignment = NSTextAlignmentLeft;
    self.textViewContent.layer.borderWidth = 1.0;
    self.textViewContent.layer.borderColor = [UIColor grayColor].CGColor;
    self.textViewContent.delegate = self;
    [self.viewAlert addSubview:self.textViewContent];
    
    // buttons
    // ok button
    self.btnOk = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, 400, 80, 30)];
    self.btnOk.backgroundColor = [UIColor blueColor];
    [self.btnOk setTitle:@"OK" forState:UIControlStateNormal];
    [self.viewAlert addSubview:self.btnOk];
    // cancel button
    self.btnCancel = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2+200, 400, 80, 30)];
    self.btnCancel.backgroundColor = [UIColor blueColor];
    [self.btnCancel setTitle:@"Cancel" forState:UIControlStateNormal];
    [self.viewAlert addSubview:self.btnCancel];
    
}

- (void)initConstraints{
    self.imgIcon.translatesAutoresizingMaskIntoConstraints = NO;
    self.lblTitle.translatesAutoresizingMaskIntoConstraints = NO;
    self.lblSubtitle.translatesAutoresizingMaskIntoConstraints = NO;
    self.textViewContent.translatesAutoresizingMaskIntoConstraints = NO;
    self.btnOk.translatesAutoresizingMaskIntoConstraints = NO;
    self.btnCancel.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    
}

- (void)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle icon:(UIImage *)icon{
//    BeautifyAlertViewController *vc = [self initWithNibName:@"BeautifyAlertViewController" bundle:nil];
    
//    self.modalPresentationStyle = UIModalPresentationCurrentContext;
//    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self initUI];
    [self initConstraints];
    
    // initialise
    [self.imgIcon setImage:icon];
    [self.lblTitle setText:title];
    [self.lblSubtitle setText:subtitle];
    
}



@end
