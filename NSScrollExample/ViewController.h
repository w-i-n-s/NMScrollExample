//
//  ViewController.h
//  NSScrollExample
//
//  Created by wins on 15.10.13.
//  Copyright (c) 2013 wins. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource,NSTableViewDelegate>
@property (strong) IBOutlet NSTableView *leftTable;
@property (strong) IBOutlet NSTableView *rightTable;

@end
