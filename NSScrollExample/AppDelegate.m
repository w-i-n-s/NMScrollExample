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
    
    NSPoint pointToScrollTo = NSMakePoint (xCoord,0);

//    [NSAnimationContext beginGrouping];
//    [[NSAnimationContext currentContext] setDuration:20.0];
    //    [(CAScrollLayer*)[[_scrollView contentView] layer] scrollToPoint: pointToScrollTo];
    [[_scrollView contentView] scrollToPoint: pointToScrollTo];

    [_scrollView reflectScrolledClipView: [_scrollView contentView]];
//    [NSAnimationContext endGrouping];
    
   
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
