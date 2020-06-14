//
//  EngineManager.h
//  HelloFlutter
//
//  Created by smart on 2020/6/13.
//  Copyright © 2020 smart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/FlutterEngine.h>

NS_ASSUME_NONNULL_BEGIN

@interface EngineManager : NSObject

@property (nonatomic, strong) FlutterEngine *flutterEngine;

+ (instancetype)sharedInstance;

- (void)createEngine;

@end

NS_ASSUME_NONNULL_END
