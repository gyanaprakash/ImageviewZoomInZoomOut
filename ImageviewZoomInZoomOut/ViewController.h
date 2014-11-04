//
//  ViewController.h
//  ImageviewZoomInZoomOut
//
//  Created by Bsetecip10 on 04/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

{
    bool nowZoomed;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageOne;
@property (nonatomic, retain) IBOutlet UIImageView *imageTwo;
@property (nonatomic, retain) IBOutlet UIImageView *imageThree;
@property (nonatomic, retain) IBOutlet UIView *viewone;

-(void)animation1;

- (IBAction)buttonclick:(UIButton *)sender;


@end

