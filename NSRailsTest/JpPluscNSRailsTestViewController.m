//
//  JpPluscNSRailsTestViewController.m
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/1/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import "JpPluscNSRailsTestViewController.h"
#import "JpPluscNSRailsTestUser.h"
#include <stdlib.h>

@interface JpPluscNSRailsTestViewController ()

@end

@implementation JpPluscNSRailsTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.aGender.delegate = self;
    self.aGender.dataSource = self;
    self.aGender.showsSelectionIndicator = YES;
    
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeSoftKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSignupButtonTapped:(id)sender {
    
//    int r = arc4random() % 10000;
//    NSNumber* uid = [NSNumber numberWithInt:r];
    
    JpPluscNSRailsTestUser *user = [[JpPluscNSRailsTestUser alloc] init];
    NSLog(@"%@", user);
    
    long val = [self.aGender selectedRowInComponent:0];
    
    
    user = [[JpPluscNSRailsTestUser alloc] init];
    user.name = self.aName.text;
    user.email = self.aEmail.text;
    user.passwd = self.aPasswd.text;
    user.gender = [NSString stringWithFormat:@"%ld", val];
    
    [user remoteCreateAsync:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

- (void)closeSoftKeyboard {
    [self.view endEditing: YES];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
    numberOfRowsInComponent:(NSInteger)component
{
    return 2;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView
    widthForComponent:(NSInteger)component
{
        return 164.0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (row) {
        case 0 :
            return @"Male";
            break;
        case 1 :
            return @"Female";
            break;
        default:
            return @"Unisex";
            break;
    }
}

@end
