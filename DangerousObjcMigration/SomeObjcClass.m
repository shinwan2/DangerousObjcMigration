#import "SomeObjcClass.h"
#import "DangerousObjcMigration-Swift.h"

@implementation ComplexObject
@end

@implementation SomeObjcClass

+ (NSString *)passNilToSwift {
    SomeObjcClass *me = [SomeObjcClass new];
    return [SomeSwiftClass processNonNullWithText:me.text number:me.number complex:me.complex];
}

- (NSNumber*)convertTimeInterval:(NSTimeInterval)timeInterval {
    return @((NSUInteger)(timeInterval * 1000));
}

@end
