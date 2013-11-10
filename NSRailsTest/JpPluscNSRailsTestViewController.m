//
//  JpPluscNSRailsTestViewController.m
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/1/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import "JpPluscNSRailsTestViewController.h"
#import "JpPluscNSRailsTestUser.h"
#import "JpPluscNSRailsTestSecondViewController.h"
#include <stdlib.h>

@interface JpPluscNSRailsTestViewController ()

@end

@implementation JpPluscNSRailsTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeSoftKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSignupButtonTapped:(id)sender {
    JpPluscNSRailsTestUser *user = [[JpPluscNSRailsTestUser alloc] init];
    NSLog(@"%@", user);
    
    user = [[JpPluscNSRailsTestUser alloc] init];
    user.name = self.aName.text;
    user.email = self.aEmail.text;
    user.passwd = self.aPasswd.text;
    
    [user remoteCreateAsync:^(NSError *error) {
        if (error != nil) {
            NSLog(@"%@", error);
        }
    }];
    
}

- (void)closeSoftKeyboard {
    [self.view endEditing: YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toSecondViewSegue"]) {
        //ここでパラメータを渡す
        JpPluscNSRailsTestSecondViewController *secondViewController = segue.destinationViewController;
    }
}

@end
