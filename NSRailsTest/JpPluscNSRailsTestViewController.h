//
//  JpPluscNSRailsTestViewController.h
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/1/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JpPluscNSRailsTestViewController : UIViewController
    <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UINavigationBar *aNaviBar;
@property (weak, nonatomic) IBOutlet UIPickerView *aGender;
@property (weak, nonatomic) IBOutlet UITextField *aEmail;
@property (weak, nonatomic) IBOutlet UITextField *aPasswd;

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *aName;
- (IBAction)didSignupButtonTapped:(id)sender;

@end
