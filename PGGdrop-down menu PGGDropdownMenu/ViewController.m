//
//  ViewController.m
//  PGGdrop-down menu PGGDropdownMenu
//
//  Created by 陈鹏 on 2017/11/8.
//  Copyright © 2017年 penggege.CP. All rights reserved.
//代码地址 https://github.com/penghero/PGGdrop-down-menu-PGGDropdownMenu.git


#import "ViewController.h"
#import "PGGDropView.h"

@interface ViewController ()<PGGDropDelegate>
@property(strong,nonatomic)PGGDropView * dropView;
@property(strong,nonatomic)UIButton *btn;

@end

@implementation ViewController

- (void)PGGDropView:(PGGDropView *)DropView didSelectAtIndex:(NSInteger )index{
    
    NSLog(@"%ld",index);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(200, 100, 100, 30)];
    [self.btn setTitle:@"点我吧" forState:UIControlStateNormal];
    self.btn.backgroundColor = [UIColor redColor];
    [self.btn addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
}

- (void)show{
    self.dropView = [[PGGDropView alloc] initWithFrame:CGRectMake(200, 130 ,100, 300) withTitleArray:@[@"操作一",@"操作二",@"操作三",@"操作四",@"操作五"]];
    [self.dropView beginAnimation];
    self.dropView.delegate = self;
    [self.view addSubview:self.dropView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
