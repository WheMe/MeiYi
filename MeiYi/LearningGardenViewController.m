//
//  LearningGardenViewController.m
//  MeiYi
//
//  Created by ShangYi on 13-11-17.
//  Copyright (c) 2013年 Shangyi.Yang. All rights reserved.
//

#import "LearningGardenViewController.h"
#import "HomePageViewController.h"
#import "MallViewController.h"

@interface LearningGardenViewController ()

@end

@implementation LearningGardenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)initViewControllers
{
    NSArray *array;
    MallViewController *mallViewController = [[MallViewController alloc] init];
    UINavigationController *mallNavigationController = [[UINavigationController alloc] initWithRootViewController:mallViewController];
    
    HomePageViewController *homepageViewController = [[HomePageViewController alloc] init];
    UINavigationController *homepageNavigationController = [[UINavigationController alloc] initWithRootViewController:homepageViewController];
    
    array = [[NSArray alloc] initWithObjects:mallNavigationController,homepageNavigationController, nil];
    self.tabBarController.viewControllers = array;
}

- (void)clickBackAction:(id)sender
{
//    self.parentViewController.navigationController.navigationBarHidden = NO;
//    self.parentViewController.navigationController.navigationBar.hidden = NO;
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"%@, parent :%@",self.navigationController, self.parentViewController.navigationController);
//    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
//    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [backBtn setFrame:CGRectMake(0, 0, 44, 44)];
//    [backBtn addTarget:self action:@selector(clickBackAction:) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *backBar = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
//    self.navigationItem.leftBarButtonItem = backBar;
////    self.navigationItem.backBarButtonItem = backBar;
//    self.navigationController.interactivePopGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self;
    
}




-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
