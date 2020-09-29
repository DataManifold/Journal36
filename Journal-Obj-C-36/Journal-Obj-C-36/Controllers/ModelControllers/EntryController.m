//
//  EntryController.m
//  Journal-Obj-C-36
//
//  Created by Shean Bjoralt on 9/28/20.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

+ (EntryController *)shared
{
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

// source of truth
- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addEntry:(NSString *)title text:(NSString *)text
{
    _entries = [self addEntry:title text:text];
}

- (void)removeEntry:(Entry *)entry
{
    
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title text:(NSString *)text
{
    
}

@end
