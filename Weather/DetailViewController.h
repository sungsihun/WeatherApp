//
//  DetailViewController.h
//  Weather
//
//  Created by NICE on 2018-08-12.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailViewController : UIViewController
- (instancetype)initWithCity:(City*)city;

@end
