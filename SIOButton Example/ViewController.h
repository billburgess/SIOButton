//
//  ViewController.h
//  SIOButton
//
//  Created by Bill Burgess on 7/17/14.
//  Copyright (c) 2014 Simply Made Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SIOButton.h"

@interface ViewController : UIViewController {
    IBOutlet SIOButton *defaultButton;
    IBOutlet SIOButton *halfAlphaButton;
    IBOutlet SIOButton *quarterAlphaButton;
}

- (IBAction)topButtonPressed:(id)sender;

@end
