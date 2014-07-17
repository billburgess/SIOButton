# SIOButton

## Overview

`SIOButton` is a `UIButton` wrapper that changes the button alpha on selection to hightlight touch events rather than button images for each selection state.

## Usage

`SIOButton` can be added directly using Interface Builder, or generated purely in code

Using Interface Builder, just change the class from `UIButton` to `SIOButton` and hook up your outlets accordingly. You will also need to set a few items to ensure correct layout:
  
	button.primaryColor = [UIColor blueColor];
	button.cornerRadius = 4.0f;

Using straight code, it is very similar to a normal `UIButton`:

	SIOButton *button = [SIOButton alloc] initWithPrimaryColor:[UIColor blueColor]];
	// you can subscribe to the delegate methods to detect changes, or add your own targets
	button.delegate = self;
	[button addTarget:self action:@selector(myButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[button setTitle:@"My Button" forState:UIControStateNormal];
	button.cornerRadius = 4.0f;
	button.titleLabel.textColor = [UIColor whiteColor];
	button.titleLabel.font = [UIFont systemFontOfSize:17.0f];
	[self addSubview:button];
	
There are 2 init methods:

	- (id)initWithPrimaryColor:(UIColor *)primaryColor;
	- (id)initWithDelegate:(id<SIOButtonDelegate>)delegate;

There are 3 delegate methods:

	- (void)buttonTouchDown:(SIOButton *)button;
	- (void)buttonTouchCancel:(SIOButton *)button;
	- (void)buttonTouchUpInside:(SIOButton *)button;

Sometimes it is beneficial to disable the button in code, or lock the user out for a time. You can select or dim the button and set user interaction:

	[button selectButtonAndSetUserInteraction:NO];
	
The alpha values can be overridden from their defaults:
	- normalAlpha; // default is 1.0
	- selectedAlpha; // default is 0.7
	- highlightedAlpha; // default is 1.0
	- disabledAlpha; // default is 0.5

## Installation

The preferred method of installation is with CocoaPods.

	pod 'SIOButton'
	
If you must install on your own, just copy the SIOButton.h/m files to your project and you should be good to go.

## ARC Compatibility

This library is ARC-only. This should go without saying at this point, but you never know.

## TODO

- Documentation would be nice.
- Unit Tests
