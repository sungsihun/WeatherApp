//
//  CityViewController.m
//  Weather
//
//  Created by NICE on 2018-08-08.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailViewController.h"

@interface CityViewController ()


@end

@implementation CityViewController


- (instancetype)initWithCity:(City*)city {
    if (self = [super init]) {
        _currentCity = city;
        
        NSString *cityNumber = [self.currentCity.cityName substringFromIndex:5];
        NSInteger cityTagNumber = cityNumber.integerValue - 1;
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.currentCity.cityName image:[UIImage imageNamed:@"earth.png"] tag:cityTagNumber];
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    ////////// weather image
    self.navigationItem.title = self.currentCity.cityName;
    UIImage *weatherImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", self.currentCity.cityWeather]];
    UIImageView *weatherImageView = [[UIImageView alloc] initWithImage:weatherImage];
    [weatherImageView setFrame:CGRectZero];
    weatherImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:weatherImageView];
    
    self.weatherImageVerticalConstraint = [NSLayoutConstraint constraintWithItem:weatherImageView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    self.weatherImageVerticalConstraint.active = YES;
    
    self.weatherImageHorizontalConstraint = [NSLayoutConstraint constraintWithItem:weatherImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    self.weatherImageHorizontalConstraint.active = YES;
    
    self.weatherImageHeightConstraint = [NSLayoutConstraint constraintWithItem:weatherImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:weatherImage.size.height*4];
    self.weatherImageHeightConstraint.active = YES;
    
    self.weatherImageWidthConstraint = [NSLayoutConstraint constraintWithItem:weatherImageView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:weatherImage.size.width*4];
    self.weatherImageWidthConstraint.active = YES;

    
    
    ////////// weather label
    UILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 500, 60)];
    [weatherLabel setBackgroundColor:[UIColor clearColor]];
    [weatherLabel setText:self.currentCity.cityWeather];
    [weatherLabel setTextColor:[UIColor whiteColor]];
    [weatherLabel setFont:[UIFont fontWithName:@"GillSans" size:80]];
    [weatherLabel setTextAlignment:NSTextAlignmentCenter];
    weatherLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:weatherLabel];
    
    self.weatherLabelBottomMarginConstraint = [NSLayoutConstraint constraintWithItem:weatherLabel attribute:NSLayoutAttributeBottomMargin relatedBy:NSLayoutRelationEqual toItem:weatherImageView attribute:NSLayoutAttributeTop multiplier:1 constant:-50];
    self.weatherLabelBottomMarginConstraint.active = YES;
    
    self.weatherLabelHorizontalConstraint = [NSLayoutConstraint constraintWithItem:weatherLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    self.weatherLabelHorizontalConstraint.active = YES;
    
    
    
    ////////// detail weather
    UIButton *detailButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    detailButton.frame = CGRectMake(200, 200, 100, 100);
    detailButton.tintColor = [UIColor yellowColor];
    [detailButton setTitle:@"Detail View" forState:UIControlStateNormal];
    detailButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:detailButton];
    [detailButton addTarget:self action:@selector(showDetailedWeather) forControlEvents:UIControlEventTouchUpInside];
    
    self.detailButtonTopMarginConstraint = [NSLayoutConstraint constraintWithItem:detailButton attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:weatherImageView attribute:NSLayoutAttributeTop multiplier:1 constant:200];
    self.detailButtonTopMarginConstraint.active = YES;
    
    self.detailButtonHorizontalConstraint = [NSLayoutConstraint constraintWithItem:detailButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    self.detailButtonHorizontalConstraint.active = YES;
    
    
}

- (void)showDetailedWeather {
    DetailViewController *detailView = [[DetailViewController alloc] initWithCity:self.currentCity];
    [self.navigationController pushViewController:detailView animated:YES];
}



@end
