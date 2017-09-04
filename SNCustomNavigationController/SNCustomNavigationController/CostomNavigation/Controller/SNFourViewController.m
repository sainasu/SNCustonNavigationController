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

        [self addRightButtonSelectdImage:[UIImage imageNamed:@"icon_navbar_ok_blue"] normalImage:[UIImage imageNamed:@"icon_navbar_close"]];
}
-(void)rightButtonAction:(id)sender{
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
