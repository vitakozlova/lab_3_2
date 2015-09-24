//
//  BasketIterator.m
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "BasketIterator.h"
#import "Math.h"

@implementation BasketIterator
-(Boolean) hasNext
{
    return !_isDone;
}
-(NSString*) next
{
    NSString* item = [_items objectAtIndex: _index];
    NSInteger center = floor([_items count] / 2);
    if(_index < center) {
        _index = [_items count] - _index - 1;
    } else if (_index > center) {
        _index = [_items count] - _index;
    } else {
        _isDone = true;
    }
    return item;
}
-(id) init: (NSMutableArray*) items_
{
    self = [super init];
    _items = items_;
    _index = 0;
    _isDone = false;
    return self;
}
@end
