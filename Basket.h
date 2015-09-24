//
//  Basket.h
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasketIterator.h"

@interface Basket : NSObject
@property NSMutableArray* fruites;
-(void) putFruit : (NSObject*) f;
-(BasketIterator* ) createIterator;
-(id) init;
@end
