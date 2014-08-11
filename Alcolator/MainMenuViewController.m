//
//  MainMenuViewController.m
//  Alcolator
//
//  Created by Andy Bradbury on 11/08/2014.
//  Copyright (c) 2014 Tin Bear Studios. All rights reserved.
//

#import "MainMenuViewController.h"
#import "ViewController.h"
#import "WhiskeyViewController.h"

@interface MainMenuViewController ()

@property (weak, nonatomic) UIButton *wineButton;
@property (weak, nonatomic) UIButton *whiskeyButton;

@end

@implementation MainMenuViewController

- (void)loadView {
    self.wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.whiskeyButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.wineButton setTitle:NSLocalizedString(@"Wine", @"wine") forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whiskey", @"whiskey") forState:UIControlStateNormal];
    
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.wineButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [self.whiskeyButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    
    self.wineButton.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:40.0];
    
    self.view = [[UIView alloc] init];
    
    [self.view addSubview:self.wineButton];
    [self.view addSubview:self.whiskeyButton];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = NSLocalizedString(@"Select Alcolator", @"Select Alcolator");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

//    CGRect wineButtonFrame, whiskeyButtonFrame;
//    CGRectDivide(self.view.bounds, &wineButtonFrame, &whiskeyButtonFrame, CGRectGetWidth(self.view.bounds) / 2, CGRectMinXEdge);

//    self.wineButton.frame = wineButtonFrame;
//    self.whiskeyButton.frame = whiskeyButtonFrame;
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat padding = 20;
    
    CGFloat viewWidth = screen.size.width - padding - padding;
    CGFloat viewHeight = screen.size.height - 100 - padding;
    
    CGFloat itemWidth = viewWidth;
    CGFloat itemHeight = 44;
    
    self.wineButton.frame = CGRectMake(padding, viewHeight/2, itemWidth, itemHeight);

    CGFloat bottomOfWineButton = CGRectGetMaxY(self.wineButton.frame);
    self.whiskeyButton.frame = CGRectMake(padding, bottomOfWineButton + padding, itemWidth, itemHeight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) winePressed:(UIButton *) sender {
    ViewController *wineVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void) whiskeyPressed:(UIButton *) sender {
    WhiskeyViewController *whiskeyVC = [[WhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

@end
