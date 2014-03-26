//
//  HomePageViewController.m
//  MeiYi
//
//  Created by ShangYi on 13-11-17.
//  Copyright (c) 2013年 Shangyi.Yang. All rights reserved.
//

#import "HomePageViewController.h"
#import "LearningGardenViewController.h"
#import "MallViewController.h"
#import "StylistViewController.h"
#import "ElectronicMenuViewController.h"
#import "PersonalCenterViewController.h"
#import "MessageCenterViewController.h"
#import "MYClient.h"
#import "AfClent.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UIView *)titleViewForTitle:(NSString *)title
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:20.0];
    //    label.font = [UIFont fontWithName:@"Verdana" size:20.0];
    label.shadowColor = [UIColor colorWithWhite:1.0 alpha:0.5];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor]; // change this color
    label.text = title;
    [label sizeToFit];
    return label;
}

- (void)initViewControllers
{
    NSArray *array;
    LearningGardenViewController *learningGargenViewController = [[LearningGardenViewController alloc] init];
    UINavigationController *learningGargenNavigationCotroller = [[UINavigationController alloc] initWithRootViewController:learningGargenViewController];
    
    MallViewController *mallViewController = [[MallViewController alloc] init];
    UINavigationController *mallNavigationController = [[UINavigationController alloc] initWithRootViewController:mallViewController];
    
    StylistViewController *stylistViewController = [[StylistViewController alloc] init];
    UINavigationController *stylistNavigationViewController = [[UINavigationController alloc] initWithRootViewController:stylistViewController];
    
    ElectronicMenuViewController *electronicMenuViewController = [[ElectronicMenuViewController alloc] init];
    UINavigationController *electronicMenuNavigationController = [[UINavigationController alloc] initWithRootViewController:electronicMenuViewController];
    
    PersonalCenterViewController *personalCenterViewController = [[PersonalCenterViewController alloc] init];
    UINavigationController *personalCenterNavigationController = [[UINavigationController alloc] initWithRootViewController:personalCenterViewController];
    
    learningGargenViewController.title = @"学习园地";
    mallViewController.title = @"美易商城";
    stylistViewController.title = @"我是发型师";
    electronicMenuViewController.title = @"电子菜单";
    personalCenterViewController.title = @"个人中心";
    
    array = [[NSArray alloc] initWithObjects:learningGargenNavigationCotroller,mallNavigationController,stylistNavigationViewController,electronicMenuNavigationController,personalCenterNavigationController, nil];
    self.tabBarController.viewControllers = array;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"美易沙龙";
    self.view.frame = [UIScreen mainScreen].bounds;
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    self.tabBarController =tabController;
    [self initViewControllers];
    
    [[MYClient shareInstance] getPath:nil parameters:nil success:^(id content, id responseObject) {
        
    } failure:^(id content, NSError *error) {
        
    }];
    
    AfClent *clent = [[AfClent alloc] init];
    [clent getDataFromUrl:nil];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]
                                     
                                     initWithTitle:@"设置"
                                     
                                     style:UIBarButtonItemStyleDone
                                     
                                     target:self
                                     
                                     action:@selector(test:)];
    
    self.navigationItem.backBarButtonItem = cancelButton;

}

- (void)test:(id)sender
{
    NSLog(@"------------ :  %s", __func__);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)learningGardenAction:(id)sender {
    LearningGardenViewController *learningGargenViewController = [[LearningGardenViewController alloc] init];
    [self.navigationController pushViewController:learningGargenViewController animated:YES];
}

- (IBAction)mallAction:(id)sender {
    MallViewController *mallViewController = [[MallViewController alloc] init];
    [self.navigationController pushViewController:mallViewController animated:YES];
}

- (IBAction)stylistAction:(id)sender {
    StylistViewController *stylistViewController = [[StylistViewController alloc] init];
    [self.navigationController pushViewController:stylistViewController animated:YES];
}

- (IBAction)menuAction:(id)sender {
    MessageCenterViewController *messageCenterViewController = [[MessageCenterViewController alloc] init];
    [self.navigationController pushViewController:messageCenterViewController animated:YES];
}


@end
