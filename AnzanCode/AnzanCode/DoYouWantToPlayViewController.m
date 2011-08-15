//
//  DoYouWantToPlayViewController.m
//  AnzanCode
//
//  Created by ë∫âzÅ@çKëÂ on 11/08/15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DoYouWantToPlayViewController.h"


@implementation DoYouWantToPlayViewController

@synthesize playButton;
@synthesize cancelButton;
@synthesize spvc = _spvc;


//-----------------------------------
#pragma mark -init-
//-----------------------------------


// private common init
- (void) _init {

}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }

    return self;
}


// common init
- (id) init {
    
    self = [super initWithNibName:@"DoYouWantToPlayViewController" bundle:nil];
    if (!self) {
        return nil;
    }
    
    [self _init];
    
    return self;
}





//-----------------------------------
#pragma mark - View lifecycle
//-----------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//-----------------------------------
#pragma mark -  -
//-----------------------------------

//-----------------------------------
#pragma mark -  -
//-----------------------------------

- (IBAction) playSelectedStage: (id)sender {

    NSLog(@"playSelectedStage");
    self.spvc = [[StagePlayViewController alloc] init];
    [self.view addSubview:self.spvc.view];
    
    
}


- (IBAction) cancelSelectedStage: (id)sender {
    NSLog(@"cancelSelectedStage");
    
    [self.view removeFromSuperview];
    
}
//-----------------------------------
#pragma mark -util-
//-----------------------------------
- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

@end
