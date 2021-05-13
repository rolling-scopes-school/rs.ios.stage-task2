#import <XCTest/XCTest.h>
#import "IPFormatConverter.h"

@interface IPFormatterTests : XCTestCase

@property (nonatomic, strong) IPFormatConverter *converter;

@end

@implementation IPFormatterTests

- (void)setUp {
    self.converter = [IPFormatConverter new];
}

- (void)tearDown {
    self.converter = nil;
}

- (void)test1 {
    NSArray *inputArray = nil;
    NSString *resultString = [self.converter ipFormatConverter: inputArray];
    BOOL flag = [resultString isEqualToString: @""];
    XCTAssertTrue(flag);
}

- (void)test2 {
    NSArray *inputArray = @[@192,@168,@1,@1];
    XCTAssertEqualObjects([self.converter ipFormatConverter: inputArray], @"192.168.1.1");
}

- (void)test3 {
    NSArray *inputArray = @[@192,@168,@20,@98,@50,@69];
    NSString *resultString = [self.converter ipFormatConverter: inputArray];
    BOOL flag = resultString.length < 16;
    XCTAssertTrue(flag);
}

- (void)test4 {
    NSArray *inputArray = @[@192,@168,@256,@45];
    XCTAssertEqualObjects([self.converter ipFormatConverter: inputArray], @"The numbers in the input array can be in the range from 0 to 255.");
}

- (void)test5 {
    NSArray *inputArray = @[@192,@168,@1,@-20];
    XCTAssertEqualObjects([self.converter ipFormatConverter: inputArray], @"Negative numbers are not valid for input.");
}

- (void)test6 {
    NSArray *inputArray = @[@192];
    XCTAssertEqualObjects([self.converter ipFormatConverter: inputArray], @"192.0.0.0");
}

- (void)test7 {
    NSArray *inputArray = @[];
    XCTAssertEqualObjects([self.converter ipFormatConverter: inputArray], @"");
}

@end
