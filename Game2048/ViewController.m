//
//  ViewController.m
//  Game2048
//
//  Created by CSX on 2017/1/12.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "ViewController.h"
#import "CSXGameAddController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *myCreateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButton.frame = CGRectMake(0, 100, 100, 100);
    [myCreateButton setBackgroundColor:[UIColor grayColor]];
    [myCreateButton setTitle:@"Choose" forState:UIControlStateNormal];
    [myCreateButton addTarget:self action:@selector(buttonChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myCreateButton];

    
}
- (void)buttonChoose:(UIButton *)sender{
    CSXGameAddController *gameVC = [[CSXGameAddController alloc]init];
    gameVC.dimension = 4;
    gameVC.threshold = 2048;
    self.navigationController.navigationBarHidden = YES;
    [self.navigationController pushViewController:gameVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
