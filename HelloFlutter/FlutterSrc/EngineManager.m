//
//  EngineManager.m
//  HelloFlutter
//
//  Created by smart on 2020/6/13.
//  Copyright © 2020 smart. All rights reserved.
//

#import "EngineManager.h"
#import "AppDelegate.h"
#import "MyFlutterViewController.h"

@implementation EngineManager

+ (instancetype)sharedInstance {
    static EngineManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)createEngine {
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my_flutter_engine"];
    [self.flutterEngine run];
    [self registerChannels];
}

- (void)registerChannels {
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"com.cxjwin.flutter/nav"
                                                                binaryMessenger:self.flutterEngine.binaryMessenger];
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"push"]) {
            UIWindow *window = [[UIApplication sharedApplication] windows].firstObject;
            UISplitViewController *sp = (UISplitViewController *)window.rootViewController;
            UINavigationController *nav = sp.viewControllers.firstObject;
            if (![nav isKindOfClass:[UINavigationController class]]) {
                return;
            }
            self.flutterEngine.viewController = nil;
            FlutterViewController *vc =
                [[FlutterViewController alloc] initWithEngine:self.flutterEngine nibName:nil bundle:nil];
            [nav pushViewController:vc animated:YES];
        }
    }];
}

@end
