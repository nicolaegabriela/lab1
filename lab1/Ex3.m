//
//  Ex3.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex3.h"
#import "Ex2.h"

@interface Ex3()
@property (nonatomic, strong) Worker *worker;
@end

@implementation Ex3
-(instancetype)init
{
    self = [super init];
    if (!self) return nil;
    self.worker = [[Worker alloc] init];
    self.worker.delegate = self;
    return self;
}

-(void)runAsyncProcces
{
    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:1436133542];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:601595942];;
    NSDate *date3 = [NSDate dateWithTimeIntervalSince1970:1450994342];;
    [self.worker biggestDateFromArray:@[date1,date2,date3]];
    [self.worker computeFibbonaci];
    [self.worker weekday:[NSDate date]];
    [self.worker weekday:date2];
}

-(void)biggestDateAfterProcces:(NSDate *)date
{
    //print date
}


-(void)computeFibbonaciReady:(NSUInteger)bigFibonacci
{
    
}
@end
