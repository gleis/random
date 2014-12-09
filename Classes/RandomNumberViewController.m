//
//  RandomNumberViewController.m
//  random
//
//  Created by admin on 7/28/09.
//  Copyright 2009 n/a. All rights reserved.
//

#import "RandomNumberViewController.h"


@implementation RandomNumberViewController

@synthesize slide1;

-(id)init
{
	// Call the superclass's designated initializer
	[super initWithNibName:nil 
					bundle:nil];
	
	// Get the tab bar item
	UITabBarItem *tbi = [self tabBarItem];
	
	// Give it a label
	[tbi setTitle:@"Number"];
	
	// Create a UIImage from a file
	UIImage *i = [UIImage imageNamed:@"Hypno.png"];
	
	//Put that image on the tab bar item
	[tbi setImage:i];
	
	//Set the background color of the new view so we can see it
	//[[self view] setBackgroundColor:[UIColor orangeColor]];
	
	return self;
}

- (IBAction)getSliderValue:(id)sender
{
	//UISlider *slide1 = [[UISlider alloc] init];
	UISlider *slide1 = (UISlider *)sender;

	sliderValue.text = [NSString stringWithFormat:@"%1.0f", slide1.value];
}

- (IBAction)genRandom:(id)sender
{
	int seedNum = [sliderValue.text intValue];
	NSString *ran1 = [[NSString alloc] initWithFormat:@"%d", random() % seedNum];
	ranNum.text = ran1;
}


/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
