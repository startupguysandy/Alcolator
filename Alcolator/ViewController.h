//
//  ViewController.h
//  Alcolator
//
//  Created by Andy Bradbury on 10/08/2014.
//  Copyright (c) 2014 Tin Bear Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UISlider *beerCountSlider;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UILabel *beerCountLabel;

- (void)buttonPressed:(UIButton *)sender;

@end

