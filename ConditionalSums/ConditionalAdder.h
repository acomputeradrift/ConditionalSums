//
//  ConditionalAdder.h
//  ConditionalSums
//
//  Created by Jamie on 2018-07-21.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConditionalAdder : NSObject
@property NSArray *globalArrayHolder;

- (instancetype)initWithNumbers:(NSArray *)numbers;

- (int)sumWithCondition:(NSString *)condition;


@end
