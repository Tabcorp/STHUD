//
//  STHUDDemoApplicationDelegate.h
//  STHUDDemo
//
//  Copyright (c) 2012 Scott Talbot. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol STHUDHost;


@interface STHUDDemoApplicationDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong,readonly) id<STHUDHost> hudHost;
@property (nonatomic,strong,readonly) id<STHUDHost> shinyHUDHost;
@end

extern STHUDDemoApplicationDelegate *STHUDDemoSharedApplicationDelegate(void);
