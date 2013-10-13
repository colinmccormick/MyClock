//
//  ViewController.h
//  MyClock
//
//  Created by Colin McCormick on 10/3/13.
//  Copyright (c) 2013 Colin McCormick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIClock.h"

@interface ViewController : UIViewController {
    __weak NSTimer *updateTimer;
    __weak IBOutlet UISegmentedControl *tickButton;
}

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIClock *clockView;

-(IBAction)datePickerDateWasChanged:(id)sender;
-(IBAction)tickButtonTouched:(id)sender;

@end
