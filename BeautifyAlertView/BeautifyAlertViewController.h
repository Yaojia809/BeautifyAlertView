//
//  BeautifyAlertViewController.h
//  BeautifyAlertView
//
//  Created by Yaojia on 24/1/19.
//  Copyright © 2019 Yaojia. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BeautifyAlertViewController : UIViewController <UITextViewDelegate>
- (void)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle icon:(UIImage *)icon;
@end

NS_ASSUME_NONNULL_END
