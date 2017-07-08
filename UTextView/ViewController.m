//
//  ViewController.m
//  UTextView
//
//  Created by 高广校 on 15/7/17.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "ViewController.h"
#import "PlaceholderTextView.h"
@interface ViewController ()
{
    
    __weak IBOutlet PlaceholderTextView *_textView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textView.placehoder = @"请输入文字";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
