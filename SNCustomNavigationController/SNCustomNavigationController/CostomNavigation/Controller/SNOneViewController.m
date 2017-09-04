//
//  SNOneViewController.m
//  SNCustomNavigationController
//
//  Created by saina_su on 2017/9/1.
//  Copyright © 2017年 saina. All rights reserved.
//

#import "SNOneViewController.h"
#import "SNTwoViewController.h"
@interface SNOneViewController ()

@end

@implementation SNOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
        self.view.backgroundColor = [UIColor blackColor];
        UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [pushButton setTitle:@"push" forState:UIControlStateNormal];
        pushButton.frame = CGRectMake(0, 0, 100, 50);
        pushButton.center = self.view.center;
        pushButton.backgroundColor = [UIColor blackColor];
        [pushButton addTarget:self action:@selector(pushButtonAction) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:pushButton];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
        label.textAlignment = NSTextAlignmentLeft;
        label.numberOfLines = 0;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = @"本页面： 没有设定导航栏按钮， 只有标题， 点击push按钮跳转页面。";
        label.font = [UIFont systemFontOfSize:20];
        CGSize size = [label sizeThatFits:CGSizeMake(label.frame.size.width, MAXFLOAT)];
        label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width,size.height);
        [self.view addSubview:label];
        
        /*
        UITextField *texfield = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40)];
        texfield.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:texfield];
        */
    
}
-(void)pushButtonAction{
        SNTwoViewController *twoVC = [SNTwoViewController new];
        [self.navigationController pushViewController:twoVC animated:YES];
        
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
