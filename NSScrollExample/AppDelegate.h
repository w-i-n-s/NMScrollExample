//
//  AppDelegate.h
//  NSScrollExample
//
//  Created by wins on 14.10.13.
//  Copyright (c) 2013 wins. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class ViewController;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSScrollView *scrollView;
@property (strong) ViewController *controller;

- (IBAction)showRight:(id)sender;
- (IBAction)showMiddle:(id)sender;
- (IBAction)showLeft:(id)sender;
@end
