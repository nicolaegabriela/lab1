//
//  main.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ex1.h"
#import "Ex2.h"
#import "Ex3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Ex1 *ex1 = [[Ex1 alloc] init];
        NSArray *array = @[@"test",@"one",@"ten"];
        [ex1 cappitalizeWordsFromArray:array];
        [ex1 linkAllWordsFromArray:array usingSeparator:@"~"];
        
        NSLog(@": %@",[ex1 linkAndCapitalizeAllWordsFromArray:array usingSeparator:@"~"]);
        NSLog([ex1 checkPalindrome:@"madam"] ? @"YES":@"No");
        NSLog([ex1 checkPalindrome:@"man"] ? @"YES":@"No");
        
        NSLog([ex1 checkPalindromeFromCharPosition:1 ofAllWordsFromArray:array] ? @"YES":@"No");
        NSLog([ex1 checkPalindromeFromCharPosition:2 ofAllWordsFromArray:array] ? @"YES":@"No");
        NSLog([ex1 checkPalindromeFromCharPosition:3 ofAllWordsFromArray:array] ? @"YES":@"No");
        NSLog([ex1 checkPalindromeFromCharPosition:4 ofAllWordsFromArray:array] ? @"YES":@"No");
        
        Ex2 *ex2 = [[Ex2 alloc] init];
        NSUInteger a=[ex2 cumputeFibbonaci:10];
        int x=(int)a;
        NSLog(@":%lu ",(unsigned long)a);
       NSDictionary *dictionary = @{@"first":@[@5,@2,@3],
                                  @"second":@[@4,@3],
                                     @"third":@[@11],
                                    @"last":@[@1,@3]
                                    };
        NSLog(@":%@",[ex2 keyBigestAverageArray:dictionary]);
    NSArray *pointsArray = @[@[@7.0, @43.0],
                                 @[@7.0, @42.0],
                                 @[@6.0, @42.0],
                                 @[@5.0, @42.0],
                                @[@6.0, @43.0],
                             @[@5.0, @43.0]
                                 ];
        NSLog(@":%@",[ex2 findClosestPointInArray:pointsArray fromPoint:@[@0.0, @0.0]]);
         NSLog(@":%@",[ex2 findDateAfter:56 from:[NSDate date]]);
         NSLog([ex2 checkLeapYear:@"MAY_20_15"]? @"YES":@"No");
        NSLog([ex2 checkLeapYear:@"JUL_2_12"]? @"YES":@"No");
//        [ex2 checkPrimeNumber:14214];
//        [ex2 checkPrimeNumber:3389];
        
         Ex3 *ex3 = [[Ex3 alloc] init];
        [ex3 runAsyncProcces];
    }
    return 0;
}


