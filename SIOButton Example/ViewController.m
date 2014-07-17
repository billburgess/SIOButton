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
    defaultButton.cornerRadius = 2.0f;
    [defaultButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    halfAlphaButton.cornerRadius = 8.0f;
    [halfAlphaButton setSelectedAlpha:0.5f];
    [halfAlphaButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [halfAlphaButton selectButtonAndSetUserInteraction:NO];
    
    quarterAlphaButton.cornerRadius = 0.0f;
    [quarterAlphaButton setSelectedAlpha:0.25f];
    [quarterAlphaButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [quarterAlphaButton selectButtonAndSetUserInteraction:NO];
    
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
