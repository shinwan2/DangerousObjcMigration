#ifndef SomeObjcClass_h
#define SomeObjcClass_h

#import <Foundation/Foundation.h>

@interface ComplexObject : NSObject
@property (readonly, nonatomic) int number;
@end

@interface SomeObjcClass : NSObject

@property (readonly, nonatomic, nullable) NSString *text;
@property (readonly, nonatomic, nullable) NSNumber *number;
@property (readonly, nonatomic, nullable) ComplexObject *complex;
@property (readonly, nonatomic, nullable) NSURL *url;
@property (readonly, nonatomic, nullable) NSArray<NSString *> *array;

+ (NSString *)passNilToSwift;
- (NSNumber*)convertTimeInterval:(NSTimeInterval)timeInterval;

@end

#endif /* SomeObjcClass_h */
