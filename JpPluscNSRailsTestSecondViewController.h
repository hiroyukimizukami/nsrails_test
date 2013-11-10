//
//  JpPluscNSRailsTestSecondViewController.h
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/9/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JpPluscNSRailsTestSecondViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate> 

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
