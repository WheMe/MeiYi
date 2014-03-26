//
//  MacroDefine.h
//  KSApp
//
//  Created by kenshin on 13-8-18.
//  Copyright (c) 2013年 kenshin. All rights reserved.
//

#import "AppConfig.h"

//判断设备是否IPHONE5
#define INTERFACE_IS_Phone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define NavBarHeight         44
#define TabBarHeight         49

//屏幕尺寸
#define ScreenSize [UIScreen mainScreen].bounds.size

//动态获取设备高度
#define IPHONE_WIDTH ScreenSize.width
#define IPHONE_HEIGHT ScreenSize.height

#define SYSTEM_VERSION [[UIDevice currentDevice].systemVersion floatValue]

