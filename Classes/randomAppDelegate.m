//
//  randomAppDelegate.m
//  random
//
//  Created by admin on 7/28/09.
//  Copyright n/a 2009. All rights reserved.
//

#import "randomAppDelegate.h"
#import "RandomPhraseViewController.h"
#import	"RandomNumberViewController.h"

@implementation randomAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	//randomPhraseViewController = [[RandomPhraseViewController alloc] init];
	//randomNumberViewController = [[RandomNumberViewController alloc] init];
	//create the tabBarController
	tabBarController = [[UITabBarController alloc] init];
	
	//Create two view controllers
	// UIViewController *vc1 = [[HypnosisViewController alloc] init];
	// UIViewController *vc2 = [[CurrentTimeViewController alloc] init];
	
	//Make an array containing the two view controllers
	// NSArray *viewControllers = [NSArray arrayWithObjects:vc1, vc2, nil];
	
	//Attach them to the tab bar controller
	// [tabBarController setViewControllers:viewControllers];
	
	// [vc1 release];
	// [vc2 release];
	
	//UINavigationController *navController = [[UINavigationController alloc]
	//										 initWithRootViewController:timeViewController];
	
	//Create two view controllers
	UIViewController *vc1 = [[RandomPhraseViewController alloc] init];
	UIViewController *vc2 = [[RandomNumberViewController alloc] init];
	
	//Make an array containing the two view controllers
	NSArray *viewControllers = [NSArray arrayWithObjects:vc1, vc2, nil];
	
	//Attach them to the tab bar controller
	[tabBarController setViewControllers:viewControllers];
	
	[vc1 release];
	[vc2 release];
	
	
	//[window addSubview:[navController view]];
	
	//put the tabBarController's view on the window
	[window addSubview:[tabBarController view]];
	
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
