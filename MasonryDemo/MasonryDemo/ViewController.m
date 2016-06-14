//
//  ViewController.m
//  MasonryDemo
//
//  Created by yao on 16/6/8.
//  Copyright © 2016年 yao. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "MMPlaceHolder.h"

@interface ViewController ()

@property (nonatomic) UILabel *displayView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*   1
    UIView *sv = [[UIView alloc] init];
    [sv showPlaceHolder];
    sv.backgroundColor = [UIColor blackColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
     */
    
     /*  2
    UIView *sv1 = [[UIView alloc] init];
    [sv1 showPlaceHolder];
    sv1.backgroundColor = [UIColor redColor];
    [sv addSubview:sv1];
    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
        make.left.equalTo(sv).with.offset(10);
        make.right.equalTo(sv).with.offset(-10);
        make.top.equalTo(sv).with.offset(10);
        make.bottom.equalTo(sv).with.offset(-10);

    }];
     
     */
    
     /*  3
    int padding1 = 10;
    
    UIView *sv2 = [[UIView alloc] init];
    [sv2 showPlaceHolder];
    sv2.backgroundColor = [UIColor orangeColor];
    UIView *sv3 = [[UIView alloc] init];
    [sv3 showPlaceHolder];
    sv3.backgroundColor = [UIColor orangeColor];
    [sv addSubview:sv2];
    [sv addSubview:sv3];
    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(sv.mas_centerY);
        make.left.equalTo(sv.mas_left).with.offset(padding1);
        make.right.equalTo(sv3.mas_left).with.offset(-padding1);
        make.height.mas_equalTo(@150);
        make.width.equalTo(sv3);
        
    }];
    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(sv.mas_centerY);
        make.left.equalTo(sv2.mas_right).with.offset(padding1);
        make.right.equalTo(sv.mas_right).with.offset(-padding1);
        make.height.mas_equalTo(@150);
        make.width.equalTo(sv2);
    }];
     */
    
    
     /* 4
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor whiteColor];
    [sv addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(5, 5, 5, 5));
    }];
    
    UIView *container = [[UIView alloc] init];
    [scrollView addSubview:container];
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView);
    }];
    int count = 10;
    UIView *lastView = nil;
    for (int i = 0; i<count; ++i) {
        UIView *subV = [[UIView alloc] init];
        [container addSubview:subV];
        [subV showPlaceHolder];
        subV.backgroundColor = [UIColor colorWithHue:arc4random()%256/256.0
                                          saturation:arc4random()%256/256.0
                                          brightness:arc4random()%256/256.0
                                               alpha:arc4random()%256/256.0];
        [subV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(container);
            make.right.equalTo(container);
            make.height.equalTo(@(20*(i+1)));
            if (lastView) {
                make.top.equalTo(lastView.mas_bottom).with.offset(5);
            } else {
                make.top.equalTo(container.mas_top);
            }
        }];
        lastView = subV;
    }
    
    [container mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView.mas_bottom).with.offset(5);
    }];
     
     */
    
    /*  5
    UIView *blackView = [[UIView alloc] init];
    blackView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:blackView];
    
    UIView *grayView = [[UIView alloc] init];
    grayView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:grayView];
    
    [blackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.view).with.offset(20);
        make.right.equalTo(self.view).with.offset(-20);
        make.bottom.equalTo(grayView.mas_top).with.offset(-20);
      //  make.height.equalTo(grayView.mas_height);
        
    }];
    

    [grayView mas_makeConstraints:^(MASConstraintMaker *make) {
      //  make.left.equalTo(blackView.mas_centerX);
        make.width.equalTo(blackView.mas_width).multipliedBy(0.8);
        make.right.bottom.equalTo(self.view).with.offset(-20);
        make.top.equalTo(blackView.mas_bottom).with.offset(20);
        make.height.equalTo(blackView.mas_height);
        
    }];
     */
    
    /*
    UIView *redView1 = [[UIView alloc] init];
    UIView *redView2 = [[UIView alloc] init];
    redView1.backgroundColor = [UIColor redColor];
    redView2.backgroundColor = [UIColor redColor];
    
    UIView *grayView1 = [[UIView alloc] init];
    UIView *grayView2 = [[UIView alloc] init];
    UIView *grayView3 = [[UIView alloc] init];
    grayView1.backgroundColor = [UIColor grayColor];
    grayView2.backgroundColor = [UIColor grayColor];
    grayView3.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:redView1];
    [self.view addSubview:redView2];
    [self.view addSubview:grayView1];
    [self.view addSubview:grayView2];
    [self.view addSubview:grayView3];
    
    // add masonry
    [grayView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.bottom.equalTo(redView1.mas_bottom);
        make.height.mas_equalTo(20);
    }];
    
    [redView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 50));
        make.left.equalTo(grayView1.mas_right);
        make.bottom.equalTo(self.view).offset(-50);
    }];
    
    [grayView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(redView1.mas_right);
        make.bottom.equalTo(redView1.mas_bottom);
        make.size.equalTo(grayView1);
    }];
    
    [redView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(grayView2.mas_right);
        make.bottom.equalTo(redView1.mas_bottom);
        make.size.equalTo(redView1);
    }];
    
    [grayView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.equalTo(redView2.mas_right);
        make.right.equalTo(self.view);
        make.size.equalTo(grayView1);
        make.bottom.equalTo(redView1.mas_bottom);
    }];
     
     */
    
         
    UIView *displayView = [[UIView alloc] init];
    
    displayView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:displayView];
    
    UIView *keyboardView = [[UIView alloc] init];
    [self.view addSubview:keyboardView];
    [displayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top);
        make.left.and.right.equalTo(self.view);
        make.height.equalTo(keyboardView).multipliedBy(0.3f);
    }];
    
    [keyboardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(displayView.mas_bottom);
        make.bottom.equalTo(self.view.mas_bottom);
        make.left.and.right.equalTo(self.view);
    }];
    
    UILabel *displayNum = [[UILabel alloc] init];
    [displayView addSubview:displayNum];
    displayNum.text = @"0";
    displayNum.font = [UIFont fontWithName:@"HeiTi SC" size:70];
    displayNum.textColor = [UIColor whiteColor];
    displayNum.textAlignment = NSTextAlignmentRight;
    [displayNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.and.right.equalTo(displayView).with.offset(-10);
        make.left.equalTo(displayView).with.offset(10);
    }];
    self.displayView = displayNum;
    
    NSArray *keys = @[@"AC",@"+/-",@"%",@"÷"
                      ,@"7",@"8",@"9",@"x"
                      ,@"4",@"5",@"6",@"-"
                      ,@"1",@"2",@"3",@"+"
                      ,@"0",@"?",@".",@"="];
    int indexOfKeys = 0;
    for (NSString *key in keys) {
        indexOfKeys++;
        int rowNum = indexOfKeys % 4 == 0? indexOfKeys/4 : indexOfKeys/4 + 1;
        int colNum = indexOfKeys % 4 == 0? 4 : indexOfKeys % 4;
        NSLog(@"index is:%d and row:%d,col:%d",indexOfKeys,rowNum,colNum);
        
        UIButton *keyView = [UIButton buttonWithType:UIButtonTypeCustom];
        [keyboardView addSubview:keyView];
        [keyView setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [keyView setTitle:key forState:UIControlStateNormal];
        [keyView.layer setBorderWidth:1];
        [keyView.layer setBorderColor:[[UIColor blackColor] CGColor]];
        [keyView.titleLabel setFont:[UIFont fontWithName:@"Arial-BoldItalicMT" size:30]];
        [keyView addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
        [keyView mas_makeConstraints:^(MASConstraintMaker *make) {
            if ([key isEqualToString:@"0"] || [key isEqualToString:@"?"]) {
                if ([key isEqualToString:@"0"]) {
                    [keyView mas_makeConstraints:^(MASConstraintMaker *make) {
                        make.height.equalTo(keyboardView.mas_height).with.multipliedBy(.2f);
                        make.width.equalTo(keyboardView.mas_width).multipliedBy(.5);
                        make.left.equalTo(keyboardView.mas_left);
                        make.baseline.equalTo(keyboardView.mas_baseline).with.multipliedBy(.9f);
                    }];
                    
                } else {
                    [keyView removeFromSuperview];
                }
            } else {
                make.width.equalTo(keyboardView.mas_width).with.multipliedBy(.25f);
                make.height.equalTo(keyboardView.mas_height).with.multipliedBy(.2f);
                switch (rowNum) {
                    case 1:
                    {
                        make.baseline.equalTo(keyboardView.mas_baseline).with.multipliedBy(.1f);
                        keyView.backgroundColor = [UIColor colorWithRed:205 green:205 blue:205 alpha:1];
                    }
                        break;
                    case 2:
                    {
                        make.baseline.equalTo(keyboardView.mas_baseline).with.multipliedBy(.3f);
                    }
                        break;
                    case 3:
                    {
                        make.baseline.equalTo(keyboardView.mas_baseline).with.multipliedBy(.5f);
                    }
                        break;
                    case 4:
                    {
                        make.baseline.equalTo(keyboardView.mas_baseline).with.multipliedBy(.7f);
                    }
                        break;
                    case 5:
                    {
                        make.baseline.equalTo(keyboardView.mas_baseline).with.multipliedBy(.9f);
                    }
                        break;
                        
                    default:
                        break;
                }
                switch (colNum) {
                    case 1:
                    {
                        make.left.equalTo(keyboardView.mas_left);
                    }
                        break;
                    case 2:
                    {
                        make.right.equalTo(keyboardView.mas_centerX);
                    }
                        break;
                    case 3:
                    {
                        make.left.equalTo(keyboardView.mas_centerX);
                    }
                        break;
                    case 4:
                    {
                        make.right.equalTo(keyboardView.mas_right);
                        keyboardView.backgroundColor = [UIColor colorWithRed:243 green:127 blue:38 alpha:1];
                    }
                        break;
                    default:
                        break;
                }
            }
        }];
    }
}


// add button action
- (void)buttonTapped:(id)sender {
    UIButton *keyButton = (UIButton *)sender;
    self.displayView.text = keyButton.currentTitle;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
