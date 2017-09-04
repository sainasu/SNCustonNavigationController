//
//  SNNavigaironController.h
//  SNCustomNavigationController
//
//  Created by saina_su on 2017/9/1.
//  Copyright © 2017年 saina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SNNavigaironController : UINavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController translucent:(BOOL)translucent;

- (BOOL)popToViewControllerClass:(Class)clazz animated:(BOOL)animated;

@end
