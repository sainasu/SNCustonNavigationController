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
        UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [pushButton setTitle:@"push" forState:UIControlStateNormal];
        pushButton.frame = CGRectMake(0, 0, 100, 50);
        pushButton.center = self.view.center;
        pushButton.backgroundColor = [UIColor blackColor];
        [pushButton addTarget:self action:@selector(pushButtonAction) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:pushButton];
        
        
    
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
