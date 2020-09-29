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
    if (!_entries)
    {
        _entries = [NSMutableArray new];
    }
    NSMutableArray *entry = [[NSMutableArray alloc] init];
    Entry *newEntry = [[Entry alloc] initWithTitle:title text:text timestamp:[NSDate now]];
    [entry addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry
{
    
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title text:(NSString *)text
{
    entry.title = title;
    entry.text = text;
    entry.timestamp = [NSDate now];
}

@end
