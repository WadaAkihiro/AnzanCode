//
//  StageSelectRootViewController.m
//  AnzanCode
//
//  Created by ë∫âzÅ@çKëÂ on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StageSelectRootViewController.h"

#define ZOOM_VIEW_TAG 100
#define ZOOM_STEP 1.5

#define THUMB_HEIGHT 150
#define THUMB_V_PADDING 10
#define THUMB_H_PADDING 10
#define CREDIT_LABEL_HEIGHT 20

#define AUTOSCROLL_THRESHOLD 30


@interface StageSelectRootViewController (viewHandlingMethods)
    //セレクトされたステージをselectedimageviewに表示するメソッド
    - (void)selectedImageNamed: (NSString *)name;
    //メイン画面がタッチされたら、プレイするかどうかの確認をするメソッド
@end

@interface StageSelectRootViewController (autoscrollingMethods)
    - (void)maybeAutoscrollForThumb: (StageThumbImageView *)thumb;
    - (void)autoscrollTimerFired: (NSTimer *)timer;
    - (void)legalizeAutoscrollDistance;
    - (float)autoscrollDistanceForProximityToEdge:(float)proximity;
@end

@implementation StageSelectRootViewController

@synthesize selectedStageImageView = _selectedStageImageView;

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
-(id) init {
    
    self = [super initWithNibName:@"StageSelectRootViewController" bundle:nil];
    if (!self) {
        return nil;
    }
    
    [self _init];
    
    return self;
}





//-----------------------------------
#pragma mark - View lifecycle
//-----------------------------------

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //まず「プレイするステージを選んで下さい」画面を表示する
    UIImage*    firstImage = [[UIImage alloc] initWithContentsOfFile:@"first.png"];
    self.selectedStageImageView = [[SelectedStageImageView alloc] initWithImage:firstImage];
    //デリゲートをセット
    [self.selectedStageImageView setDelegate:self];
    [self.view addSubview:self.selectedStageImageView];
    
    [firstImage release];
}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view from its nib.
//}
//
//- (void)viewDidUnload
//{
//    [super viewDidUnload];
//    // Release any retained subviews of the main view.
//    // e.g. self.myOutlet = nil;
//}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//-----------------------------------
#pragma mark - uiscrollviewdelegate -
//-----------------------------------

//-----------------------------------
#pragma mark - stagethumbimageview delegate -
//-----------------------------------
- (void)StageThumbImageViewWasTapped:(StageThumbImageView *)tiv {
    NSLog(@"StageSelectRootViewController StageThumbImageViewWasTapped");
    
    //[self pickImageNamed:[tiv imageName]];
}


- (void)StageThumbImageViewStartedTracking:(StageThumbImageView *)tiv {
    NSLog(@"StageSelectRootViewController StageThumbImageViewStartedTracking");
    //[thumbScrollView bringSubviewToFront:tiv];
}

- (void)StageThumbImageViewMoved:(StageThumbImageView *)draggingThumb {
    NSLog(@"StageSelectRootViewController StageThumbImageViewMoved");
    
    
}

- (void)StageThumbImageViewStoppedTracking:(StageThumbImageView *)tiv {
    NSLog(@"StageSelectRootViewController StageThumbImageViewStoppedTracking");
    // if the user lets go of the thumb image view, stop autoscrolling
    [autoscrollTimer invalidate];
    autoscrollTimer = nil;
}

//-----------------------------------
#pragma mark -util-
//-----------------------------------

//セレクトされたステージをselectedimageviewに表示するメソッド
- (void)selectedImageNamed: (NSString *)name {
    
}

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
