//
//  CityViewController.h
//  Weather
//
//  Created by NICE on 2018-08-08.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic) City *currentCity;

@property (nonatomic, weak) NSLayoutConstraint *weatherImageVerticalConstraint;
@property (nonatomic, weak) NSLayoutConstraint *weatherImageHorizontalConstraint;
@property (nonatomic, weak) NSLayoutConstraint *weatherImageHeightConstraint;
@property (nonatomic, weak) NSLayoutConstraint *weatherImageWidthConstraint;

@property (nonatomic, weak) NSLayoutConstraint *weatherLabelBottomMarginConstraint;
@property (nonatomic, weak) NSLayoutConstraint *weatherLabelHorizontalConstraint;

@property (nonatomic, weak) NSLayoutConstraint *detailButtonTopMarginConstraint;
@property (nonatomic, weak) NSLayoutConstraint *detailButtonHorizontalConstraint;

- (instancetype)initWithCity:(City*)city;

@end
