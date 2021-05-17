#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {

    NSMutableArray<NSNumber *> *mutableArrayOfNumbers = [NSMutableArray arrayWithArray:array];
    NSSortDescriptor *highestToLowest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    [mutableArrayOfNumbers sortUsingDescriptors:[NSArray arrayWithObject:highestToLowest]];

    __block NSInteger totalResult = 0;
    [mutableArrayOfNumbers enumerateObjectsUsingBlock:^(NSNumber *num, NSUInteger index, BOOL *stop) {
        if (index == [mutableArrayOfNumbers count] - 1) {
            *stop = YES;
        }
        for (int i = (int) index + 1; i < mutableArrayOfNumbers.count; i++) {
            NSInteger check = [num integerValue] - [[mutableArrayOfNumbers objectAtIndex:i] integerValue];
            if (check == [number integerValue]) {
                totalResult = totalResult + 1;
            } else if (check > [number integerValue]) {
                break;
            }
        }
    }];

    return totalResult;
}

@end
