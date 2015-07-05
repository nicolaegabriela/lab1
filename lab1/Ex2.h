//
//  Ex2.h
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ex2 : NSObject
-(NSUInteger)cumputeFibbonaci:(NSUInteger)number;
-(NSString *)keyBigestAverageArray:(NSDictionary *)dictionary;
-(NSArray *)findClosestPointInArray:(NSArray *)points fromPoint:(NSArray *)origin;
-(NSString *)findDateAfter:(NSInteger)numberOfDays from:(NSDate *)fromDate;
-(BOOL)checkLeapYear:(NSString *)string;
-(BOOL)checkPrimeNumber:(NSUInteger)number;
@end
