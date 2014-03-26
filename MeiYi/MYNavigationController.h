//
//  MYNavigationController.h
//  MeiYi
//
//  Created by ShangYi.Yang on 14-3-10.
//  Copyright (c) 2014年 Shangyi.Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol NavProtocol <NSObject>

- (void)popAction;

@end

@interface MYNavigationController : UINavigationController<UINavigationControllerDelegate,UIGestureRecognizerDelegate>
@property (assign, nonatomic) id<NavProtocol> delegateAction;
@end

