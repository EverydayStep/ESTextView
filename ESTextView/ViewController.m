//
//  ViewController.m
//  ESTextView
//
//  Created by codeLocker on 2017/8/8.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
#import "ESTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ESTextView *textView = [[ESTextView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:textView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
