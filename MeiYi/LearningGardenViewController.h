//
//  LearningGardenViewController.h
//  MeiYi
//
//  Created by ShangYi on 13-11-17.
//  Copyright (c) 2013年 Shangyi.Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "MYNavigationController.h"

@interface LearningGardenViewController : BaseViewController<UINavigationControllerDelegate,NavProtocol>


@property (strong, nonatomic)UITabBarController *tabBarController;

@end
