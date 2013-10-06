//
//  ViewController.m
//  MyClock
//
//  Created by Colin McCormick on 10/3/13.
//  Copyright (c) 2013 Colin McCormick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize datePicker = _datePicker;
@synthesize clockView = _clockView;

-(IBAction)datePickerDateWasChanged:(id)sender {
    NSDate *datePicked = [self.datePicker date];
    [self.clockView setClockTime:datePicked];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
