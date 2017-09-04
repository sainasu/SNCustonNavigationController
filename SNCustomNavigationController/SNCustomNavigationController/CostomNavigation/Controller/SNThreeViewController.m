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
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
        label.textAlignment = NSTextAlignmentLeft;
        label.numberOfLines = 0;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];

        if (self.isPush == NO) {
                [self addRightButtons:@[[UIImage imageNamed:@"icon_navbar_close"]]];
                self.view.backgroundColor = [UIColor redColor];
                self.statusBarHidden = YES;//隐藏状态栏
                self.navigationItem.title = @"联系人";
                label.text = @"本页面： 设定导航标题“联系人”， 没有返回按钮，模态到这个页面， 隐藏到了状态栏， 点close按钮， dis掉本页面， 返回到上一级页面";

               // self.navigationController.navigationBar.barTintColor = [UIColor blueColor];//设置导航栏颜色
                

        }else{
                self.view.backgroundColor = [UIColor blueColor];
                self.navigationItem.title = @"添加";
                label.text = @"本页面： 设定导航标题“添加”， 默认返回按钮， 没有别的按钮";


        }
        label.font = [UIFont systemFontOfSize:20];
        CGSize size = [label sizeThatFits:CGSizeMake(label.frame.size.width, MAXFLOAT)];
        label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width,size.height);
        
        [self.view addSubview:label];
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
