//
//  BeautifyAlertViewController.h
//  BeautifyAlertView
//
//  Created by Yaojia on 24/1/19.
//  Copyright © 2019 Yaojia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    StyleNormal = 0,
    StyleReport
} AlertStyle;

@interface BeautifyAlertViewController : UIViewController <UITextFieldDelegate,UITextViewDelegate>
@property UIButton *btnOk;
@property UIButton *btnCancel;

- (void)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle icon:(UIImage *)icon;
- (void)initWithIcon:(UIImage *)icon hint:(NSString *)hint style:(int)style;
- (void)associateButton:(UIButton *)button withAction:action;
@end

