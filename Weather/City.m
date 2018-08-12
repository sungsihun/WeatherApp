//
//  City.m
//  Weather
//
//  Created by NICE on 2018-08-08.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString *)cityName weather:(NSString *)cityWeather {
    if (self = [super init]) {
        _cityName = cityName;
        _cityWeather = cityWeather;
        _cityWeatherImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", _cityWeather]];
        _cityTabBarIcon = [UIImage imageNamed:@"earth.png"];
    }
    return self;
}

@end
