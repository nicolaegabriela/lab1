//
//  Worker.h
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol WorkerDelegate;
@interface Worker : NSObject
@property (weak,nonatomic) id<WorkerDelegate> delegate;
-(void)biggestDateFromArray:(NSArray *)array;
-(void)computeFibbonaci;
-(void)weekday:(NSDate *)date;
@end

@protocol WorkerDelegate
-(void)biggestDateAfterProcces:(NSDate *)date;
-(void)computeFibbonaciReady:(NSUInteger)bigFibonacci;
@end