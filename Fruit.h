//
//  Fruit.h
//  BasketNew
//
//  Created by Kozlova Vitaliya on 25.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject
@property NSString* color;
@property NSString* type;
@property NSString* name;
-(id) initFruitWithType:(NSString *)type_ withName:(NSString*)name_ withColor:(NSString*)color_;
@end
