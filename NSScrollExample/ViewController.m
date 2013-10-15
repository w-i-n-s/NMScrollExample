//
//  ViewController.m
//  NSScrollExample
//
//  Created by wins on 15.10.13.
//  Copyright (c) 2013 wins. All rights reserved.
//

#import "ViewController.h"

static NSArray *leftValues() {
    static NSArray *values = nil;
    if (!values) {
        values = [[NSArray alloc] initWithObjects:
                  @"Great notebook",
                  @"Not a bad notebook",
                  @"Good notebook",
                  @"Other good",
                  nil];
    }
    return values;
}


@interface ViewController ()

@end

@implementation ViewController

#pragma mark - NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{

    if ([tableView isEqual:_leftTable])
        return [leftValues() count];
    else
        if([tableView isEqual:_rightTable])
            return 3;
        else
            return 0;
    
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    if ([tableView isEqual:_leftTable])
        return [leftValues() objectAtIndex:row];
    else
        if([tableView isEqual:_rightTable])
            return [NSString stringWithFormat:@"row %i",(int)(row+1)];
        else
            return 0;
}

#pragma mark - NSTableViewDelegate

@end
