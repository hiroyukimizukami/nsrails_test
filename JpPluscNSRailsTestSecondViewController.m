//
//  JpPluscNSRailsTestSecondViewController.m
//  NSRailsTest
//
//  Created by hiroyuki.mizukami on 11/9/13.
//  Copyright (c) 2013 hiroyuki.mizukami. All rights reserved.
//

#import "JpPluscNSRailsTestSecondViewController.h"
#import "JpPluscNSRailsTestUser.h"
#import "JpPluscNSRailsTestCell.h"
#import "NSRails.h"

@interface JpPluscNSRailsTestSecondViewController ()

@property (strong, nonatomic) NSArray* users;

@end

@implementation JpPluscNSRailsTestSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"JpPluscNSRailsTestCell" bundle:nil] forCellReuseIdentifier:@"userCell"];
    
    [JpPluscNSRailsTestUser remoteAllAsync:^(NSArray *allRemote, NSError *error) {
        NSMutableArray *indexPaths = [NSMutableArray array];
        NSInteger size = [allRemote count];
        for (int i = 0; i < size; i++) {
            [indexPaths addObject:[NSIndexPath indexPathForRow:i inSection:0]];
        }
        
        self.users = allRemote;
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView endUpdates];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.users count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    JpPluscNSRailsTestCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"userCell"];
    
    if (cell == nil)
    {
        cell = [[JpPluscNSRailsTestCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"userCell"];
    }
    
    JpPluscNSRailsTestUser* user = [self.users objectAtIndex:indexPath.row];
    
    cell.name.text = user.name;
    cell.email.text = user.email;
    cell.passwd.text = user.passwd;
    
    return cell;
}

@end
