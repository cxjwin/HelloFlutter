//
//  MyFlutterViewController.m
//  HelloFlutter
//
//  Created by smart on 2020/6/13.
//  Copyright © 2020 smart. All rights reserved.
//

#import "MyFlutterViewController.h"
#import "EngineManager.h"

@implementation MyFlutterViewController

- (instancetype)initWithEngine:(FlutterEngine *)engine nibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
    self = [super initWithEngine:engine nibName:nibName bundle:nibBundle];
    if (self) {
        //
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
//    if (self.engine.viewController != self) {
//        self.engine.viewController = self;
//    }
    [super viewWillAppear:animated];
}

@end
