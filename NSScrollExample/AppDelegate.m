//
//  AppDelegate.m
//  NSScrollExample
//
//  Created by wins on 14.10.13.
//  Copyright (c) 2013 wins. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define leftPos     0
#define middlePos   101
#define rightPos    202

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [_scrollView setHasHorizontalRuler:NO];
    [_scrollView setHasVerticalRuler:NO];
    
    _controller = [[ViewController alloc] initWithNibName:@"ViewController"
                                                                  bundle:[NSBundle mainBundle]];
    
    NSView *view = [_controller view];
    
    view.layer = [CAScrollLayer layer];
	view.wantsLayer = YES;
	view.layerContentsRedrawPolicy = NSViewLayerContentsRedrawNever;
    
    [_scrollView setDocumentView:view];
}

- (void)scrollToXPosition:(float)xCoord {
    
    [NSAnimationContext beginGrouping];
    [[NSAnimationContext currentContext] setDuration:0.5];
    NSClipView* clipView = [_scrollView contentView];
    NSPoint newOrigin = [clipView bounds].origin;
    newOrigin.x = xCoord;
    [[clipView animator] setBoundsOrigin:newOrigin];
    [_scrollView reflectScrolledClipView: [_scrollView contentView]]; // may not bee necessary
    [NSAnimationContext endGrouping];
}

- (IBAction)showRight:(id)sender {
    
    [self scrollToXPosition:rightPos];
}

- (IBAction)showMiddle:(id)sender {
    
    [self scrollToXPosition:middlePos];
}

- (IBAction)showLeft:(id)sender {
    
    [self scrollToXPosition:leftPos];
}
@end
