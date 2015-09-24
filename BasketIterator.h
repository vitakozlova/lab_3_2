//
//  BasketIterator.h
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BasketIterator : NSObject
@property NSInteger index;
@property NSMutableArray* items;
@property Boolean isDone;
-(Boolean) hasNext;
-(NSString*) next;
-(id) init: (NSMutableArray*) items_;
@end
