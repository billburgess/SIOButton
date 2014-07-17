//
//  SIOButton.m
//  SIOButton
//
//  Created by Bill Burgess on 7/17/14.
//  Copyright (c) 2014 Simply Made Apps. All rights reserved.
//

#import "SIOButton.h"

static const CGFloat kDefaultNormalAlpha = 1.0f;
static const CGFloat kDefaultHighlightedAlpha = 1.0f;
static const CGFloat kDefaultSelectedAlpha = 0.7f;
static const CGFloat kDefaultDisabledAlpha = 0.5f;
static const CGFloat kDefaultCornerRadius = 4.0f;

@implementation SIOButton

#pragma mark - Init Methods
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    // handle init via XIB
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithPrimaryColor:(UIColor *)primaryColor {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        [self initialize];
        self.primaryColor = primaryColor;
    }
    return self;
}

- (id)initWithDelegate:(id<SIOButtonDelegate>)delegate {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        [self initialize];
        self.delegate = delegate;
    }
    return self;
}

- (void)initialize {
    // Initialization code
    self.primaryColor = [UIColor blueColor];
    self.secondaryColor = [UIColor orangeColor];
    self.backgroundColor = self.primaryColor;
    // add targets for touch down and touch cancel events
    [self addTarget:self action:@selector(buttonTouchDown:) forControlEvents:UIControlEventTouchDown];
    [self addTarget:self action:@selector(buttonTouchCancel:) forControlEvents:UIControlEventTouchDragExit];
    [self addTarget:self action:@selector(buttonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    // set default alpha properties
    self.normalAlpha = kDefaultNormalAlpha;
    self.selectedAlpha = kDefaultSelectedAlpha;
    self.highlightedAlpha = kDefaultHighlightedAlpha;
    self.disabledAlpha = kDefaultDisabledAlpha;
    // set default corner radius
    self.cornerRadius = kDefaultCornerRadius;
    self.layer.cornerRadius = kDefaultCornerRadius;
}

#pragma mark - Setters/Getters
- (void)setPrimaryColor:(UIColor *)primaryColor {
    _primaryColor = primaryColor;
    self.backgroundColor = primaryColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
}

#pragma mark - Button Touch Events
- (void)buttonTouchDown:(id)sender {
    [sender setAlpha:self.selectedAlpha];
    
    if ([self.delegate respondsToSelector:@selector(buttonTouchDown:)]) {
        [self.delegate buttonTouchDown:sender];
    }
}

- (void)buttonTouchCancel:(id)sender {
    [sender setAlpha:self.normalAlpha];
    
    if ([self.delegate respondsToSelector:@selector(buttonTouchCancel:)]) {
        [self.delegate buttonTouchCancel:sender];
    }
}

- (void)buttonTouchUpInside:(id)sender {
    [sender setAlpha:self.normalAlpha];
    
    if ([self.delegate respondsToSelector:@selector(buttonTouchUpInside:)]) {
        [self.delegate buttonTouchUpInside:sender];
    }
}

#pragma mark - Public Methods
- (void)selectButtonAndSetUserInteraction:(BOOL)enabled {
    [self setAlpha:self.selectedAlpha];
    [self setUserInteractionEnabled:enabled];
}

- (void)unselectButtonAndSetUserInteraction:(BOOL)enabled {
    [self setAlpha:self.normalAlpha];
    [self setUserInteractionEnabled:enabled];
}

@end
