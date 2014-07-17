//
//  SIOButton.h
//  SIOButton
//
//  Created by Bill Burgess on 7/17/14.
//  Copyright (c) 2014 Simply Made Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SIOButton;

@protocol SIOButtonDelegate <NSObject>
@optional
- (void)buttonTouchDown:(SIOButton *)button;
- (void)buttonTouchCancel:(SIOButton *)button;
- (void)buttonTouchUpInside:(SIOButton *)button;
@end

@interface SIOButton : UIButton

@property (nonatomic, weak) id <SIOButtonDelegate> delegate;
@property (nonatomic, weak) UIColor *primaryColor;
@property (nonatomic, weak) UIColor *secondaryColor;
@property (nonatomic, assign) CGFloat normalAlpha;
@property (nonatomic, assign) CGFloat selectedAlpha;
@property (nonatomic, assign) CGFloat highlightedAlpha;
@property (nonatomic, assign) CGFloat disabledAlpha;
@property (nonatomic, assign) CGFloat cornerRadius;

- (id)initWithPrimaryColor:(UIColor *)primaryColor;
- (id)initWithDelegate:(id<SIOButtonDelegate>)delegate;

/// sets the button to a permanent selected state with option for changing user interaction
- (void)selectButtonAndSetUserInteraction:(BOOL)enabled;
/// sets the button to the normal state with option for changing user interaction
- (void)unselectButtonAndSetUserInteraction:(BOOL)enabled;

@end
