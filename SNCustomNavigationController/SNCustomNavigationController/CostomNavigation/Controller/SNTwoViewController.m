//
//  SNTwoViewController.m
//  SNCustomNavigationController
//
//  Created by saina_su on 2017/9/4.
//  Copyright © 2017年 saina. All rights reserved.
//

#import "SNTwoViewController.h"
#import "SNThreeViewController.h"
#import "SNNavigaironController.h"
#import "SNFourViewController.h"
@interface SNTwoViewController ()

@end

@implementation SNTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.icon_navbar_add
        [self addRightButtons:@[[UIImage imageNamed:@"icon_navbar_help"],[UIImage imageNamed:@"icon_navbar_contacts"],[UIImage imageNamed:@"icon_navbar_add"]]];
        
}

-(void)rightButtonAction:(id)sender{
        UIButton *actionButton = (UIButton *)sender;
        if (actionButton.tag == 0) {
                SNFourViewController *fourVC  = [[SNFourViewController alloc] init];
                [self.navigationController pushViewController:fourVC animated:YES];
        }else if (actionButton.tag == 1){
                SNThreeViewController *threeVC = [SNThreeViewController new];
                threeVC.isPush = NO;
                SNNavigaironController *nav = [[SNNavigaironController alloc] initWithRootViewController:threeVC translucent:NO];
                [self presentViewController:nav animated:YES completion:nil];
                
        }else if (actionButton.tag == 2){
                SNThreeViewController *threeVC = [SNThreeViewController new];
                threeVC.isPush = YES;
                [self.navigationController pushViewController:threeVC animated:YES];
        }
        
}
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
