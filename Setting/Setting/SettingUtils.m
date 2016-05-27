//
//  SettingUtils.m
//  Setting
//
//  Created by wyh on 16/5/26.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "SettingUtils.h"

@implementation SettingUtils


+ (NSString *)appName {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

@end
