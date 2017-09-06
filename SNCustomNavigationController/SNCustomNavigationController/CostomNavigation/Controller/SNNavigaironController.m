//
//  SNNavigaironController.m
//  SNCustomNavigationController
//
//  Created by saina_su on 2017/9/1.
//  Copyright © 2017年 saina. All rights reserved.
//

#import "SNNavigaironController.h"
#import "SNCustomNavigationHeader.h"
@interface SNNavigaironController ()

@end

@implementation SNNavigaironController

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
        return [self initWithRootViewController:rootViewController translucent:NO];
}

/**
 自定义导航栏初始化方法

 @param rootViewController 跟视图控制器
 @param translucent 是否透明
 @return 返回
 */
-(id)initWithRootViewController:(UIViewController *)rootViewController translucent:(BOOL)translucent
{
        self = [super initWithRootViewController:rootViewController];
        if (self) {
                self.navigationBarHidden = NO;
                NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
                [dict setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
                self.navigationBar.titleTextAttributes = dict;
                if (translucent) {//如果是透明的
                        self.navigationBar.translucent = YES; //是否透明
                        self.navigationBar.shadowImage = [[UIImage alloc] init];//阴影图片
                        [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"icon_navbar_back"] forBarMetrics:UIBarMetricsDefault];
                        self.navigationBar.alpha = 0.5;
                        
                }else{
                        self.navigationBar.translucent = NO;
                        self.navigationBar.barTintColor = COLOR_FOR_NAV_BAR;
                        self.navigationBar.shadowImage = [[UIImage alloc] init];
                        [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
                        
                }
                
        }
        return self;
}
#pragma mark - 重写push方法
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
        self.interactivePopGestureRecognizer.enabled = NO;//enabled(启用), 是否启用手势交互
        [super pushViewController:viewController animated:animated];
        self.interactivePopGestureRecognizer.delegate = nil;
}

#pragma mark - 重写pop方法

/**
 pop方法， push之后返回的方法

 @param clazz 被push的控制器
 @param animated 是否有动画
 @return BOOL值
 */
-(BOOL)popToViewControllerClass:(Class)clazz animated:(BOOL)animated{
        UIViewController *popToViewController = nil;
        for (UIViewController *controller in self.viewControllers) {//ViewControllers 当前导航控制栈
                if ([NSStringFromClass([controller class]) isEqualToString:NSStringFromClass(clazz)]) {
                        popToViewController = controller;
                        break;
                }
        }
        if (popToViewController) {
                [self popToViewController:popToViewController animated:animated];
                return YES;
        }
        return NO;
}

/**
 模态（如果是模态，self.navigationController 调用模态方法的话， 会自动带有导航栏， 直接用self的话没有导航栏）

 @param viewControllerToPresent 被模态出来的控制器
 @param flag 是否有动画
 @param completion 完成之后回调
 */
-(void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion{
        if ([viewControllerToPresent isKindOfClass:[UINavigationController class]]) {
                [super presentViewController:viewControllerToPresent animated:flag completion:completion];
        }else{
                SNNavigaironController *navgationController = [[SNNavigaironController alloc] initWithRootViewController:viewControllerToPresent];
                [super presentViewController:navgationController animated:flag completion:completion];
        }
        
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
        return UIStatusBarStyleLightContent;
}

































@end
