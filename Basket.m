//
//  Basket.m
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "Basket.h"

@implementation Basket
-(BasketIterator*) createIterator
{
    BasketIterator* iterator = [[BasketIterator alloc] init: _fruites];
    return iterator;
}
-(void)putFruit:(NSString *)f
{
    [_fruites addObject: f];
}
-(id) init
{
    self = [super init];
    _fruites = [[NSMutableArray alloc] init];
    return self;
}
@end

