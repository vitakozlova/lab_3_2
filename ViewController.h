//
//  ViewController.h
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Basket.h"

@interface ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property Basket* basket;
@end
