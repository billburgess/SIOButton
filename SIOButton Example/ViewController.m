//
//  ViewController.m
//  SIOButton
//
//  Created by Bill Burgess on 7/17/14.
//  Copyright (c) 2014 Simply Made Apps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // configure button in the XIB
    topButton.primaryColor = [UIColor colorWithRed:0.0 green:60.0/255 blue:73.0/255 alpha:1.0f];
    topButton.cornerRadius = 2.0f;
    [topButton setTitle:NSLocalizedString(@"Top Button", @"Top Button") forState:UIControlStateNormal];
    [topButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [topButton.titleLabel setFont:[UIFont systemFontOfSize:17.0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions
- (IBAction)topButtonPressed:(id)sender {
    
}

@end
