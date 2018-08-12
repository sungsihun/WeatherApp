//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    City *city1 = [[City alloc] initWithName:@"Toronto" weather:@"clear-day"];
    City *city2 = [[City alloc] initWithName:@"Hamilton" weather:@"clear-night"];
    City *city3 = [[City alloc] initWithName:@"Ottawa" weather:@"cloudy-night"];
    City *city4 = [[City alloc] initWithName:@"Vancouver" weather:@"cloudy"];
    City *city5 = [[City alloc] initWithName:@"Seoul" weather:@"fog"];
    
    CityViewController *city1ViewController = [[CityViewController alloc] initWithCity:city1];
    CityViewController *city2ViewController = [[CityViewController alloc] initWithCity:city2];
    CityViewController *city3ViewController = [[CityViewController alloc] initWithCity:city3];
    CityViewController *city4ViewController = [[CityViewController alloc] initWithCity:city4];
    CityViewController *city5ViewController = [[CityViewController alloc] initWithCity:city5];

    UINavigationController *city1NavigationController = [[UINavigationController alloc] initWithRootViewController:city1ViewController];
    UINavigationController *city2NavigationController = [[UINavigationController alloc] initWithRootViewController:city2ViewController];
    UINavigationController *city3NavigationController = [[UINavigationController alloc] initWithRootViewController:city3ViewController];
    UINavigationController *city4NavigationController = [[UINavigationController alloc] initWithRootViewController:city4ViewController];
    UINavigationController *city5NavigationController = [[UINavigationController alloc] initWithRootViewController:city5ViewController];
    
    
    NSArray *navigationViewController = [NSArray arrayWithObjects:city1NavigationController, city2NavigationController, city3NavigationController, city4NavigationController, city5NavigationController, nil];
    
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.tabBar.tintColor = [UIColor whiteColor];
    tabBarController.tabBar.barTintColor = [UIColor darkGrayColor];

    
    tabBarController.viewControllers = navigationViewController;
    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor lightGrayColor];
    
        
    
    

    [self.window makeKeyAndVisible];
    return YES;
}

@end
