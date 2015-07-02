//
//  ViewController.m
//  SSLoadingOverlay
//
//  Created by Sopan Sharma on 6/25/15.
//  Copyright (c) 2015 Sopan Sharma. All rights reserved.
//

#import "ViewController.h"
#import "SSOverlayView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [SSOverlayView showLoadingOverlayWithTitle:@"Loading..." view:self.view];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SSOverlayView hideLoadingOverlayFromView:self.view];
    });
}


@end
