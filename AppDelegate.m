//
//  AppDelegate.m
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "AppDelegate.h"
#import "Fruit.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.basket = [[Basket alloc] init];
    Fruit* f1 = [[Fruit alloc] initFruitWithType:@"Apple" withName:@"Mr. Smith" withColor:@"green"];
    Fruit* f2 = [[Fruit alloc] initFruitWithType:@"Orange" withName:@"Jo" withColor:@"pink"];
    Fruit* f3 = [[Fruit alloc] initFruitWithType:@"Apple" withName:@"Ms. Smith" withColor:@"red"];
    Fruit* f4 = [[Fruit alloc] initFruitWithType:@"Pineapple" withName:@"Glenda" withColor:@"yellow"];
    Fruit* f5 = [[Fruit alloc] initFruitWithType:@"Grapes" withName:@"Vanessa" withColor:@"purple"];
    Fruit* f6 = [[Fruit alloc] initFruitWithType:@"Lime" withName:@"Mr. Proper" withColor:@"dark green"];
    [self.basket putFruit: f1];
    [self.basket putFruit: f2];
    [self.basket putFruit: f3];
    [self.basket putFruit: f4];
    [self.basket putFruit: f5];
    [self.basket putFruit: f6];
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
