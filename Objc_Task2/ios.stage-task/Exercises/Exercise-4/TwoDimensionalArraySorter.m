#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {

    NSMutableArray<NSNumber *> *numbersArray = [NSMutableArray arrayWithArray:@[]];
    NSMutableArray<NSString *> *stringsArray = [NSMutableArray arrayWithArray:@[]];
    NSMutableArray *resultArray = [NSMutableArray arrayWithArray:@[]];
    BOOL isError = NO;

    for (NSArray *insideArray in array) {
        if (isError) { break; }
        if (![insideArray isKindOfClass:[NSArray class]])
        {
            isError = YES;
            break;
        }

        BOOL isKindOfNumber = NO;
        BOOL isKindOfString = NO;

        for (NSObject *element in insideArray) {

            if ([element isKindOfClass:[NSNumber class]])
            {
                if (isKindOfString)
                {
                    isError = YES;
                    break;
                }
                isKindOfNumber = YES;
                [numbersArray addObject:(NSNumber*)element];
            }
            if ([element isKindOfClass:[NSString class]])
            {
                if (isKindOfNumber)
                {
                    isError = YES;
                    break;
                }
                isKindOfString = YES;
                [stringsArray addObject:(NSString*)element];
            }
        }
    }

    if (isError)
    {
        return resultArray;
    }

    if ([numbersArray count] > 0)
    {
        NSSortDescriptor *lowestToHighest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
        [numbersArray sortUsingDescriptors:[NSArray arrayWithObject:lowestToHighest]];
        if ([stringsArray count] == 0) {
            return numbersArray;
        } else {
            [resultArray addObject:numbersArray];
        }
    }

    if ([stringsArray count] > 0)
    {
        BOOL ascending = [numbersArray count] > 0 ? NO : YES;
        NSSortDescriptor *aToZ = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:ascending];
        [stringsArray sortUsingDescriptors:[NSArray arrayWithObject:aToZ]];
        if ([numbersArray count] == 0) {
            return stringsArray;
        } else {
            [resultArray addObject:stringsArray];
        }
    }

    return resultArray;
}

@end
