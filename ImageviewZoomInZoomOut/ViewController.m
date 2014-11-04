//
//  ViewController.m
//  ImageviewZoomInZoomOut
//
//  Created by Bsetecip10 on 04/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    nowZoomed = YES;
    NSTimer *timer = [[NSTimer alloc]initWithFireDate:[NSDate date] interval:0.7 target:self selector:@selector(animation1) userInfo:nil repeats:YES];
    NSRunLoop *run = [NSRunLoop currentRunLoop];
    [run addTimer:timer forMode:NSDefaultRunLoopMode];
    [self animation1];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)animation1
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    if (nowZoomed ==YES)
    {
        [animation setFromValue:[NSNumber numberWithFloat:1.1f]];
        [animation setToValue:[NSNumber numberWithFloat:1.8f]];
        
        // Set duration
        [animation setDuration:0.7f];
        
        // Set animation to be consistent on completion
        [animation setRemovedOnCompletion:NO];
        [animation setFillMode:kCAFillModeBoth];
        
        // Add animation to the view's layer
        [[_imageOne layer] addAnimation:animation forKey:@"scale"];
        [[_imageTwo layer] addAnimation:animation forKey:@"scale"];
        [[_imageThree layer]addAnimation:animation forKey:@"scale"];
        
    }
    else if (nowZoomed == NO)
    {
        // Set the initial and the final values
        [animation setFromValue:[NSNumber numberWithFloat:1.8f]];
        [animation setToValue:[NSNumber numberWithFloat:1.1f]];
        
        // Set duration
        [animation setDuration:0.7f];
        
        // Set animation to be consistent on completion
        [animation setRemovedOnCompletion:NO];
        [animation setFillMode:kCAFillModeBoth];
        
        // Add animation to the view's layer
        [[_imageOne layer] addAnimation:animation forKey:@"scale"];
        [[_imageTwo layer] addAnimation:animation forKey:@"scale"];
        [[_imageThree layer]addAnimation:animation forKey:@"scale"];
    }
    nowZoomed = !nowZoomed;
}

- (IBAction)buttonclick:(UIButton *)sender {
    UIButton *button =[[UIButton alloc]init];
    if (button.tag==1) {
    }
    else if (button.tag==2)
    {
        
    }
    else if (button.tag==3) {
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
