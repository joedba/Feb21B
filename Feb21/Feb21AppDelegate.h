//
//  Feb21AppDelegate.h
//  Feb21
//
//  Created by Joe Gabela on 2/19/13.
//  Copyright (c) 2013 Joe Gabela. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Feb21AppDelegate : UIResponder <UIApplicationDelegate>
{
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
