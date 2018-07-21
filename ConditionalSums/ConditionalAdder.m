//
//  ConditionalAdder.m
//  ConditionalSums
//
//  Created by Jamie on 2018-07-21.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ConditionalAdder.h"

@implementation ConditionalAdder

- (instancetype)initWithNumbers:(NSArray *)numbers
{
    self.globalArrayHolder = numbers;
    return self;
}

- (int)sumWithCondition:(NSString *)condition
{
    // numbers is an array of numbers
    // each number in the array needs to be checked if it matches the variable condition
    // each number must be unwrapped first, then checked then added
    //if yes then add up the values, if no matches return 0
    int placeholder = 0;
    NSInteger totalTrue = 0;
    NSInteger totalFalse = 0;
    for (NSString *count in _globalArrayHolder)
    {
        NSNumber *sum1 = _globalArrayHolder[placeholder];
        NSInteger sum1int = [sum1 integerValue];
        
        if ((sum1int %2 == 0) && ([condition isEqualToString:@"even"])) //if the results are even
        {
            totalTrue = totalTrue + sum1int;
        }
        if ((sum1int %2 != 0) && ([condition isEqualToString:@"odd"])) //if the results are odd
        {
            totalFalse = totalFalse + sum1int;
        }
        placeholder = placeholder+1;
    }
    if (totalTrue != 0)
    {
        return totalTrue;
    }
    if (totalFalse != 0)
    {
        return totalFalse;
    }
    else
    {
    return 0;
    }
}

@end
