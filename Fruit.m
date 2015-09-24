//
//  Fruit.m
//  BasketNew
//
//  Created by Kozlova Vitaliya on 25.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit
-(id)initFruitWithType:(NSString *)type_ withName:(NSString*)name_  withColor:(NSString*)color_
{
    self = [super init];
    _type = type_;
    _color = color_;
    _name = name_;
    return self;
}
@end