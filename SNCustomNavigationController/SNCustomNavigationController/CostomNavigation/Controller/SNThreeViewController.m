//
//  SNThreeViewController.m
//  SNCustomNavigationController
//
//  Created by saina_su on 2017/9/4.
//  Copyright © 2017年 saina. All rights reserved.
//

#import "SNThreeViewController.h"
#import "SNCustomNavigationHeader.h"
@interface SNThreeViewController ()

@end

@implementation SNThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        if (self.isPush == NO) {
                [self addRightButtons:@[[UIImage imageNamed:@"icon_navbar_close"]]];
                self.view.backgroundColor = [UIColor redColor];
                self.statusBarHidden = YES;//隐藏状态栏
                self.navigationItem.title = @"联系人";
                self.navigationController.navigationBar.barTintColor = [UIColor blueColor];//设置导航栏颜色
                

        }else{
                self.view.backgroundColor = [UIColor blueColor];
                self.navigationItem.title = @"添加";

        }
        
}
-(void)rightButtonAction:(id)sender{
        [self dismissViewControllerAnimated:YES completion:nil]
        ;}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
