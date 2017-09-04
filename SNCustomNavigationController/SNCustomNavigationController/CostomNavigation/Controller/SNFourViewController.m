//
//  SNFourViewController.m
//  SNCustomNavigationController
//
//  Created by saina_su on 2017/9/4.
//  Copyright © 2017年 saina. All rights reserved.
//

#import "SNFourViewController.h"

@interface SNFourViewController ()

@end

@implementation SNFourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        UIButton *navigationRightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        navigationRightButton.frame = CGRectMake(0, 0, 44, 44);
        [navigationRightButton setImage:[UIImage imageNamed:@"icon_navbar_ok_blue"] forState:UIControlStateNormal];
        [navigationRightButton setImage:[UIImage imageNamed:@"icon_navbar_close"] forState:UIControlStateSelected];
        [navigationRightButton addTarget:self action:@selector(navigationRightButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:navigationRightButton];
        self.navigationItem.rightBarButtonItem = item;


}


-(void)navigationRightButtonAction:(id)sender{
        UIButton *rightButton = (UIButton *)sender;
        if (rightButton.selected == YES) {
                rightButton.selected = NO;

        }else{
                rightButton.selected = YES;
        }
}



- (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
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
