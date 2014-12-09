//
//  RandomNumberViewController.h
//  random
//
//  Created by admin on 7/28/09.
//  Copyright 2009 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RandomNumberViewController : UIViewController {
	IBOutlet UILabel *sliderValue;
	IBOutlet UILabel *ranNum;
	IBOutlet UISlider *slide1;
}

- (IBAction)getSliderValue:(id)sender;
- (IBAction)genRandom:(id)sender;
@property(nonatomic, retain) IBOutlet UISlider *slide1;

@end
