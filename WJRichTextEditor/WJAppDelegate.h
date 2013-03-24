//
//  WJAppDelegate.h
//  WJRichTextEditor
//
//  Created by Wojciech Jachowicz on 24.03.2013.
//  Copyright (c) 2013 Wojciech Jachowicz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WJViewController;

@interface WJAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WJViewController *viewController;

@end
