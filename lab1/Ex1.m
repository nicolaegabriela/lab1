//
//  Exercices.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex1.h"


@implementation Ex1
-(NSArray *)cappitalizeWordsFromArray:(NSArray *)words
{
    NSMutableArray *result=[[NSMutableArray alloc] init];
    for(NSString *aux in words){
        NSString *temp= [aux capitalizedString];
        [result addObject:temp];
    }
    return result;
}

-(NSString *)linkAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    NSString *result=[[NSString alloc] init];
    result=[words componentsJoinedByString:separator];
    return result;
}

-(NSString *)linkAndCapitalizeAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    NSString *result=[[NSString alloc] init];
    NSArray *temp=[[NSArray alloc] init];
    temp=[self cappitalizeWordsFromArray:words];
    result=[self linkAllWordsFromArray:temp usingSeparator: separator];
    return result;
}

-(NSString *)extractSubstringFromString:(NSString *)string starting:(NSUInteger)startIndex ending:(NSUInteger)endIndex
{

    return [string substringWithRange:NSMakeRange(startIndex, endIndex)];
}

-(BOOL)checkPalindrome:(NSString *)string
{
    if (!string || string.length == 0) return NO;
    if(string.length == 1) return YES;
    for( unsigned i =0 ;i< string.length-1;i++)
        if ([string characterAtIndex:i]!=[string characterAtIndex:string.length-i-1]) return NO;
    return YES;
}

-(BOOL)checkPalindromeFromCharPosition:(NSUInteger)index ofAllWordsFromArray:(NSArray *)array
{
     NSMutableString *temp=[[NSMutableString alloc] init];
    
    for(NSString * aux in array){
        if (index>aux.length) return NO;
        NSString *c=[aux substringWithRange:NSMakeRange(index-1,1)];
            [temp appendString:c];
    }
    return [self checkPalindrome:temp];
}
@end
