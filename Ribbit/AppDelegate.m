//
//  AppDelegate.m
//  Ribbit
//
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [NSThread sleepForTimeInterval:1.5];
    
    [Parse setApplicationId:@"6N6CoT6AeDOyorAYz02MzvYRO6vJ2reS0sN5ueLO" clientKey:@"bQsg1v7eX64JKwJQHmcUQGlrVDSkhJViEyoyHKTN"];
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    [self customizeUserInterface];
    
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

#pragma mark - Helper methods

- (void)customizeUserInterface {
    // customize the nav bar (top bar)
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.553 green:0.435 blue:0.718 alpha:1.0]]; // color (overridden by the following image)
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navBarBackground"] forBarMetrics:UIBarMetricsDefault]; // set background to remove the default alpha of the bar
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]]; // title text to white
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]]; // button text to white
    
    
    //customize the tab bar (bottom bar) (can do here, but easier in the storyboard since there is only 1 tab bar)
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal]; // tab font color
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController; // get root view controller
    UITabBar *tabBar = tabBarController.tabBar; // get the tab bar from that root controller
    
    UITabBarItem *tabInbox = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabFriends = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabCamera = [tabBar.items objectAtIndex:2];
    
    // selected white
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    // unselected white
    [tabInbox setImage: [[UIImage imageNamed:@"inbox"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabInbox setSelectedImage: [UIImage imageNamed:@"inbox"]];
    [tabFriends setImage: [[UIImage imageNamed:@"friends"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabFriends setSelectedImage: [UIImage imageNamed:@"friends"]];
    [tabCamera setImage: [[UIImage imageNamed:@"camera"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabCamera setSelectedImage: [UIImage imageNamed:@"camera"]];
}

@end









