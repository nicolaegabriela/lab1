//
//  Ex2.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex2.h"

@implementation Ex2

-(NSUInteger)cumputeFibbonaci:(NSUInteger)num
{
    
    if (num== 0) {
        return 0;
    }
    if (num == 1) {
        return 1;
    }
    return [self cumputeFibbonaci:num - 1] + [self cumputeFibbonaci:num - 2];
}
-(double)average:(NSArray *)array
{
    double sum=0;
   
    for(NSNumber * aux in array)
        sum=sum+[aux integerValue];
    return sum/[array count];
}
-(NSString *)keyBigestAverageArray:(NSDictionary *)dictionary
{
    double max=0;
    NSString *keyresult;
    for (id key in [dictionary allKeys]) {
        double x=[self average:[dictionary objectForKey:key]];
        if(max<x) {max=x;
            keyresult=key;}
            
    }
    return keyresult;
}

-(NSArray *)findClosestPointInArray:(NSArray *)points fromPoint:(NSArray *)origin
{
    double x1=[[origin objectAtIndex:0] doubleValue];
    double y1=[[origin objectAtIndex:1] doubleValue];
    double distance=0;
    double x_closerPoint=x1;
    double y_closerPoint=y1;
    for (NSArray *a in points){
        double x2=[[a objectAtIndex:0] doubleValue];
        double y2=[[a objectAtIndex:1] doubleValue];
        double aux=sqrt(((x2-x1)*(x2-x1))+((y2-y1)*(y2-y1)));
        if (distance<aux) {distance=aux;
            x_closerPoint=x2;
            y_closerPoint=y2;
        }
    }
    return @[[NSNumber numberWithDouble:x_closerPoint],[NSNumber numberWithDouble:y_closerPoint]];
}

-(NSString *)findDateAfter:(NSInteger)numberOfDays from:(NSDate *)fromDate
{
    NSDateComponents *dayComponent = [[NSDateComponents alloc] init];
    dayComponent.day = numberOfDays;
    
    NSCalendar *theCalendar = [NSCalendar currentCalendar];
    NSDate *nextDate = [theCalendar dateByAddingComponents:dayComponent toDate:fromDate options:0];
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"MMM dd,yyyy HH:mm"];
    NSString *result=[format stringFromDate:nextDate];
    return result;
}

-(BOOL)checkLeapYear:(NSString *)string
{
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"MMM_dd_yy"];
    NSDate *mydate=[format dateFromString:string];
    NSDateFormatter *s=[[NSDateFormatter alloc]init];
    [s setDateFormat:@"yyyy"];
    NSString *aux=[s stringFromDate:mydate];
    NSInteger nr=[aux integerValue];
    if (nr%4==0) return YES;

    else return NO;
}

-(BOOL)checkPrimeNumber:(NSUInteger)number
{
    //ex2
    return NO;
}

@end
