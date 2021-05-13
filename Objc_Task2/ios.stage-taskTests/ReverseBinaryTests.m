#import <XCTest/XCTest.h>
#import "ReverseBinary.h"

@interface ReverseBinaryTests : XCTestCase

@end

@implementation ReverseBinaryTests

- (void)setUp {
    self.continueAfterFailure = false;
}

- (void)test0_expect0 {
    XCTAssertEqual(ReverseInteger(0), 0);
}

- (void)test1_expect128 {
    XCTAssertEqual(ReverseInteger(1), 128);
}

- (void)test2_expect64 {
    XCTAssertEqual(ReverseInteger(2), 64);
}

- (void)test56_expect28 {
    XCTAssertEqual(ReverseInteger(56), 28);
}

@end
