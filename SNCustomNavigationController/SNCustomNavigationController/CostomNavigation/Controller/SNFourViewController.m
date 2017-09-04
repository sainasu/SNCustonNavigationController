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
        self.view.backgroundColor = [UIColor grayColor];
        [self addRightButtonSelectdImage:[UIImage imageNamed:@"icon_navbar_ok_blue"] normalImage:[UIImage imageNamed:@"icon_navbar_close"]];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
        label.textAlignment = NSTextAlignmentLeft;
        label.numberOfLines = 0;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = @"本页面： 默认返回按钮， 默认标题， 点击改变状态导航右按钮";
        label.font = [UIFont systemFontOfSize:20];
        CGSize size = [label sizeThatFits:CGSizeMake(label.frame.size.width, MAXFLOAT)];
        label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width,size.height);
        [self.view addSubview:label];
        

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
