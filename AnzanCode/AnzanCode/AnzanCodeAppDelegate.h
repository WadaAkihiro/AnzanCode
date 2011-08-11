//
//  AnzanCodeAppDelegate.h
//  AnzanCode
//
//  Created by 村越　幸大 on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StageSelectRootViewController;

@interface AnzanCodeAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet StageSelectRootViewController *viewController;

@end
