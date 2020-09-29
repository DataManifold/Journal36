//
//  Entry.m
//  Journal-Obj-C-36
//
//  Created by Shean Bjoralt on 9/28/20.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text timestamp:(NSDate *)timestamp
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        _timestamp = [NSDate now];
    }
    return self;
}

@end
