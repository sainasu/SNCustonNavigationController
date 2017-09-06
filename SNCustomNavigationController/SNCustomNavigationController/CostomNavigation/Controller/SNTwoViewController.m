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
        self.view.backgroundColor = [UIColor yellowColor];
        [self addRightButtons:@[[UIImage imageNamed:@"icon_navbar_help"],[UIImage imageNamed:@"icon_navbar_contacts"],[UIImage imageNamed:@"icon_navbar_add"]]];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
        label.textAlignment = NSTextAlignmentLeft;
        label.numberOfLines = 0;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor blackColor];
        label.text = @"本页面： 设定导航标题， 默认返回按钮， 添加了三个导航右按钮，都有跳转页面的功能，联系人是模态，其他两个是push， 按钮的tag值右到左依次为0、1、2";
        label.font = [UIFont systemFontOfSize:20];
        CGSize size = [label sizeThatFits:CGSizeMake(label.frame.size.width, MAXFLOAT)];
        label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width,size.height);
        [self.view addSubview:label];

        
}

-(void)rightButtonAction:(id)sender{
        UIButton *actionButton = (UIButton *)sender;
        if (actionButton.tag == 0) {
                SNFourViewController *fourVC  = [[SNFourViewController alloc] init];
                [self.navigationController pushViewController:fourVC animated:YES];
        }else if (actionButton.tag == 1){
                SNThreeViewController *threeVC = [SNThreeViewController new];
                threeVC.isPush = NO;
                [self.navigationController presentViewController:threeVC animated:YES completion:nil];
                
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
