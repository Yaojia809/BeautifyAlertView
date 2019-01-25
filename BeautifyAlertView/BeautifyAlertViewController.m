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
@property UILabel *lblHint;
@property UITextField *textFieldTitle;
@property UITextView *textViewContent;
@property UIButton *btnOk;
@property UIButton *btnCancel;
@end

@implementation BeautifyAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (void)initUIWithStyle:(int)style{
    self.view.backgroundColor = [UIColor clearColor];
    self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    // UI
    
    // alert view
    self.viewAlert = [[UIView alloc] initWithFrame:CGRectMake(9, 175, 357, 318)];
    self.viewAlert.backgroundColor = [UIColor colorWithRed:239.0/255.0 green:239.0/255.0 blue:239.0/255.0 alpha:1.0];
    self.viewAlert.layer.cornerRadius = 15.0;
    [self.view addSubview:self.viewAlert];
    
    // icon
    self.imgIcon = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2, 20, 100, 100)];
    [self.viewAlert addSubview:self.imgIcon];
    
    // title
//    self.lblTitle = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, 130, 300, 40)];
//    self.lblTitle.font = [UIFont fontWithName:@"AvenirNext-Medium" size:45.0f];
//    self.lblTitle.textAlignment = NSTextAlignmentCenter;
//    [self.viewAlert addSubview:self.lblTitle];
    
    // subtitle
    self.lblHint = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-280)/2, 180, 280, 80)];
    self.lblHint.font = [UIFont fontWithName:@"AvenirNext-Medium" size:10.0f];
    self.lblHint.textAlignment = NSTextAlignmentCenter;
    self.lblHint.numberOfLines = 3;
    [self.viewAlert addSubview:self.lblHint];
    
    // textview
    if (style == StyleNormal){
        
    }
    
    if (style == StyleReport){
        self.textFieldTitle = [[UITextField alloc] initWithFrame:CGRectMake((self.view.frame.size.width-280)/2, 270, 280, 30)];
        self.textFieldTitle.font = [UIFont fontWithName:@"AvenirNext" size:15.0f];
        self.textFieldTitle.placeholder = @" Title";
        self.textFieldTitle.textAlignment = NSTextAlignmentLeft;
        self.textFieldTitle.layer.borderWidth = 0.3;
        self.textFieldTitle.layer.borderColor = [UIColor grayColor].CGColor;
        self.textFieldTitle.layer.cornerRadius = 10.0;
        self.textFieldTitle.backgroundColor = [UIColor whiteColor];
        self.textFieldTitle.delegate = self;
        [self.viewAlert addSubview:self.textFieldTitle];
        
        self.textViewContent = [[UITextView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-280)/2, 270, 280, 100)];
        self.textViewContent.font = [UIFont fontWithName:@"AvenirNext" size:15.0f];
        self.textViewContent.text = @"Description";
        self.textViewContent.textAlignment = NSTextAlignmentLeft;
        self.textViewContent.layer.borderWidth = 0.3;
        self.textViewContent.layer.borderColor = [UIColor grayColor].CGColor;
        self.textViewContent.layer.cornerRadius = 10.0;
        self.textViewContent.delegate = self;
        [self.viewAlert addSubview:self.textViewContent];
    }
    
    // buttons
    // ok button
    self.btnOk = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, 400, 80, 30)];
//    self.btnOk.backgroundColor = [UIColor grayColor];
    self.btnOk.layer.borderWidth = 0.3;
    self.btnOk.layer.borderColor = [UIColor blackColor].CGColor;
    [self.btnOk setTitle:@"OK" forState:UIControlStateNormal];
    [self.viewAlert addSubview:self.btnOk];
    // cancel button
    self.btnCancel = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2+200, 400, 80, 30)];
//    self.btnCancel.backgroundColor = [UIColor grayColor];
    self.btnCancel.layer.borderWidth = 0.3;
    self.btnCancel.layer.borderColor = [UIColor blackColor].CGColor;
    [self.btnCancel setTitle:@"Cancel" forState:UIControlStateNormal];
    [self.viewAlert addSubview:self.btnCancel];
    
}

- (void)initConstraintsWithStyle:(int)style{
    self.viewAlert.translatesAutoresizingMaskIntoConstraints = NO;
    self.imgIcon.translatesAutoresizingMaskIntoConstraints = NO;
    self.lblTitle.translatesAutoresizingMaskIntoConstraints = NO;
    self.lblHint.translatesAutoresizingMaskIntoConstraints = NO;
    self.textFieldTitle.translatesAutoresizingMaskIntoConstraints = NO;
    self.textViewContent.translatesAutoresizingMaskIntoConstraints = NO;
    self.btnOk.translatesAutoresizingMaskIntoConstraints = NO;
    self.btnCancel.translatesAutoresizingMaskIntoConstraints = NO;
    
    if (style == StyleNormal){
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeWidth
                                                             multiplier:0.4
                                                               constant:0.0]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:0.2
                                                               constant:0.0]];
    }
    if (style == StyleReport){
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeWidth
                                                             multiplier:0.7
                                                               constant:0.0]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.viewAlert
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:0.4
                                                               constant:0.0]];
    }
    
    
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.imgIcon
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1.0
                                                                constant:10.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.imgIcon
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1.0
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.imgIcon
                                                               attribute:NSLayoutAttributeWidth
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeWidth
                                                              multiplier:0.3
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.imgIcon
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.imgIcon
                                                               attribute:NSLayoutAttributeWidth
                                                              multiplier:1.0
                                                                constant:0.0]];
    
//    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblTitle
//                                                               attribute:NSLayoutAttributeTop
//                                                               relatedBy:NSLayoutRelationEqual
//                                                                  toItem:self.imgIcon
//                                                               attribute:NSLayoutAttributeBottom
//                                                              multiplier:1.0
//                                                                constant:10.0]];
//    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblTitle
//                                                               attribute:NSLayoutAttributeCenterX
//                                                               relatedBy:NSLayoutRelationEqual
//                                                                  toItem:self.viewAlert
//                                                               attribute:NSLayoutAttributeCenterX
//                                                              multiplier:1.0
//                                                                constant:0.0]];
//    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblTitle
//                                                               attribute:NSLayoutAttributeWidth
//                                                               relatedBy:NSLayoutRelationEqual
//                                                                  toItem:self.viewAlert
//                                                               attribute:NSLayoutAttributeWidth
//                                                              multiplier:0.7
//                                                                constant:0.0]];
    
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblHint
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.imgIcon
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1.0
                                                                constant:5.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblHint
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1.0
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblHint
                                                               attribute:NSLayoutAttributeWidth
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeWidth
                                                              multiplier:0.7
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.lblHint
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                              multiplier:1.0
                                                                constant:40.0]];
    
    if (style == StyleNormal){}
    if (style == StyleReport) {
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textFieldTitle
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.lblHint
                                                                   attribute:NSLayoutAttributeBottom
                                                                  multiplier:1.0
                                                                    constant:5.0]];
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textFieldTitle
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.viewAlert
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1.0
                                                                    constant:0.0]];
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textFieldTitle
                                                                   attribute:NSLayoutAttributeWidth
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.viewAlert
                                                                   attribute:NSLayoutAttributeWidth
                                                                  multiplier:0.7
                                                                    constant:0.0]];
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textFieldTitle
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1.0
                                                                    constant:30.0]];

        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textViewContent
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.textFieldTitle
                                                                   attribute:NSLayoutAttributeBottom
                                                                  multiplier:1.0
                                                                    constant:5.0]];
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textViewContent
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.viewAlert
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1.0
                                                                    constant:0.0]];
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textViewContent
                                                                   attribute:NSLayoutAttributeWidth
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.viewAlert
                                                                   attribute:NSLayoutAttributeWidth
                                                                  multiplier:0.7
                                                                    constant:0.0]];
        [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.textViewContent
                                                                   attribute:NSLayoutAttributeBottom
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.btnOk
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1.0
                                                                    constant:-10.0]];
        
    }
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnOk
                                                               attribute:NSLayoutAttributeBottom
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1.0
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnOk
                                                               attribute:NSLayoutAttributeTrailing
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeTrailing
                                                              multiplier:1.0
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnOk
                                                               attribute:NSLayoutAttributeWidth
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeWidth
                                                              multiplier:0.5
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnOk
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeHeight
                                                              multiplier:0.1
                                                                constant:0.0]];

    
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnCancel
                                                               attribute:NSLayoutAttributeBottom
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1.0
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnCancel
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnCancel
                                                               attribute:NSLayoutAttributeWidth
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeWidth
                                                              multiplier:0.5
                                                                constant:0.0]];
    [self.viewAlert addConstraint:[NSLayoutConstraint constraintWithItem:self.btnCancel
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.viewAlert
                                                               attribute:NSLayoutAttributeHeight
                                                              multiplier:0.1
                                                                constant:0.0]];
    
}

- (void)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle icon:(UIImage *)icon{

//    [self initUI];
//    [self initConstraints];

    // initialise
    [self.imgIcon setImage:icon];
    [self.lblTitle setText:title];
    [self.lblHint setText:subtitle];

}

- (void)initWithIcon:(UIImage *)icon hint:(NSString *)hint style:(int)style{
    [self initUIWithStyle:style];
    [self initConstraintsWithStyle:style];
    
    [self.imgIcon setImage:icon];
    [self.lblHint setText:hint];
    
}

@end
