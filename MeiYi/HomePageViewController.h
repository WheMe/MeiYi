//
//  HomePageViewController.h
//  MeiYi
//
//  Created by ShangYi on 13-11-17.
//  Copyright (c) 2013年 Shangyi.Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabbarController.h"
#import "BaseViewController.h"

@interface HomePageViewController : BaseViewController
@property (strong, nonatomic) IBOutlet UITabBarController *tabBarController;

- (IBAction)mallAction:(id)sender;
- (IBAction)learningGardenAction:(id)sender;
- (IBAction)menuAction:(id)sender;
- (IBAction)stylistAction:(id)sender;

@end
