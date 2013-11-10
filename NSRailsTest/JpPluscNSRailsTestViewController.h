//
//  JpPluscNSRailsTestViewController.h
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/1/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JpPluscNSRailsTestViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *aEmail;
@property (weak, nonatomic) IBOutlet UITextField *aPasswd;
@property (weak, nonatomic) IBOutlet UITextField *aName;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@property (weak, nonatomic) NSString *userId;
- (IBAction)didSignupButtonTapped:(id)sender;

@end
