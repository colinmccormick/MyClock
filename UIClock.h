//
//  UIClock.h
//  MyClock
//
//  Created by Colin McCormick on 10/3/13.
//  Copyright (c) 2013 Colin McCormick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIClock : UIView

@property (strong, nonatomic) NSDate *clockTime;

- (void)setClockTime:(NSDate *)clockTime;

@end
