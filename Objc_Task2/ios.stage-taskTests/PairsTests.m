#import <XCTest/XCTest.h>
#import "Pairs.h"

@interface PairsTests : XCTestCase
@property (nonatomic, strong) Pairs *pairs;
@end

@implementation PairsTests

- (void)setUp {
    self.pairs = [Pairs new];
}

- (void)tearDown {
    self.pairs = NULL;
}

- (void)test1 {
    NSInteger count = [self.pairs countPairs: @[@1, @2, @3, @4] number: @1];
    XCTAssertEqual(count, 3);
}

- (void)test2 {
    NSInteger count = [self.pairs countPairs: @[@1, @2, @3, @4] number: @2];
    XCTAssertEqual(count, 2);
}

- (void)test3 {
    NSInteger count = [self.pairs countPairs: @[@1, @2, @3, @4] number: @4];
    XCTAssertEqual(count, 0);
}

- (void)test4 {
    NSInteger count = [self.pairs countPairs: @[@0, @2, @5, @15] number: @2];
    XCTAssertEqual(count, 1);
}


@end
