#ifndef SomeObjcClass_h
#define SomeObjcClass_h

#import <Foundation/Foundation.h>

@interface ComplexObject : NSObject
@property (readonly, nonatomic) int number;
@end

@interface SomeObjcClass : NSObject

@property (readonly, nonatomic) NSString *text;
@property (readonly, nonatomic) NSNumber *number;
@property (readonly, nonatomic) ComplexObject *complex;

+ (NSString *)passNilToSwift;
- (NSNumber*)convertTimeInterval:(NSTimeInterval)timeInterval;

@end

#endif /* SomeObjcClass_h */
