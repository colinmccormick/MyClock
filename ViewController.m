//
//  ViewController.m
//  MyClock
//
//  Created by Colin McCormick on 10/3/13.
//  Copyright (c) 2013 Colin McCormick. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize datePicker = _datePicker;
@synthesize clockView = _clockView;

-(IBAction)datePickerDateWasChanged:(id)sender {
    NSDate *datePicked = [self.datePicker date];
    [self.clockView setClockTime:datePicked];
}

- (IBAction)tickButtonTouched:(id)sender {
    [updateTimer invalidate];
    updateTimer = nil;
    if (tickButton.selectedSegmentIndex == 1) {
        [self updateClock];
        updateTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
    }
}

- (void)updateClock {
    [self.clockView setClockTime:[NSDate date]];
    [self.datePicker setDate:[NSDate date] animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self tickButtonTouched:tickButton];
}

@end
