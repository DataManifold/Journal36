//
//  EntryController.h
//  Journal-Obj-C-36
//
//  Created by Shean Bjoralt on 9/28/20.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

+ (EntryController *) shared;

@property (nonatomic, strong) NSArray *entries;

- (void)addEntry:(NSString *)title
            text:(NSString *)text;

- (void)removeEntry:(Entry *)entry;

- (void)updateEntry:(Entry *)entry title:(NSString *)title
                                    text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
