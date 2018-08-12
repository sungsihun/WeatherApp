//
//  DetailViewController.m
//  Weather
//
//  Created by NICE on 2018-08-12.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (nonatomic) City *currentCity;
@end

@implementation DetailViewController

- (instancetype)initWithCity:(City*)city {
    if (self = [super init]) {
        _currentCity = city;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *detailWeatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 400, 60)];
    [detailWeatherLabel setBackgroundColor:[UIColor clearColor]];
    [detailWeatherLabel setText:@"Detail Weather"];
    [detailWeatherLabel setTextColor:[UIColor whiteColor]];
    [detailWeatherLabel setFont:[UIFont fontWithName:@"GillSans" size:50]];
    [detailWeatherLabel setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:detailWeatherLabel];
}



@end
