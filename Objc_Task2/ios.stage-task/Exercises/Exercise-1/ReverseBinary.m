#import "ReverseBinary.h"

NSString* decToBinary(NSUInteger decInt)
{
    NSString *string = @"" ;
    NSUInteger x = decInt ;
    do {
        string = [[NSString stringWithFormat: @"%lu", x&1] stringByAppendingString:string];
    } while (x >>= 1);
    return string;
}

NSString* reverseString(NSString* string)
{
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[string length]];

    [string enumerateSubstringsInRange:NSMakeRange(0,[string length])
                               options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [reversedString appendString:substring];
    }];

    for (int i = (int) 0; i < 8 - [string length]; i++)
    {
        [reversedString appendString:@"0"];
    }

    return reversedString;
}

UInt8 ReverseInteger(UInt8 n) {

    NSString *string = decToBinary(n);
    NSString *reversedString = reverseString(string);
    return strtol([reversedString UTF8String], NULL, 2);
}
