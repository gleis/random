//
//  randomAppDelegate.h
//  random
//
//  Created by admin on 7/28/09.
//  Copyright n/a 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface randomAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

