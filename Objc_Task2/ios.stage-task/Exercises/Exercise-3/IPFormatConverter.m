#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {

    if (!numbersArray || [numbersArray count] == 0) {
        return @"";
    }

    NSMutableArray *array = [NSMutableArray arrayWithArray:numbersArray];

    while ([array count] < 4) {
        NSNumber *zero = @0;
        [array addObject:zero];
    }

    while ([array count] > 4) {
        [array removeLastObject];
    }

    for (int i = 0; i < array.count; i++) {
        if ([array[i] integerValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if ([array[i] integerValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }

    return [array componentsJoinedByString:@"."];
}

@end
