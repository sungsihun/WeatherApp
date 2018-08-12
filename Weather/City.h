//
//  City.h
//  Weather
//
//  Created by NICE on 2018-08-08.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString *cityName;
@property (nonatomic) NSString *cityWeather;
@property (nonatomic) UIImage *cityWeatherImage;
@property (nonatomic) UIImage *cityTabBarIcon;

- (instancetype)initWithName:(NSString*)cityName weather:(NSString*)cityWeather;

@end
