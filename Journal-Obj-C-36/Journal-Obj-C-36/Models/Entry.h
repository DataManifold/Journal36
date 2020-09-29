//
//  Entry.h
//  Journal-Obj-C-36
//
//  Created by Shean Bjoralt on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSDate *timestamp;

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text
                    timestamp:(NSDate *)timestamp;

@end

NS_ASSUME_NONNULL_END
