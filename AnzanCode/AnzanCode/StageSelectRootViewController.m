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
    - (void)doYouWantToPlay:(NSString *)stageName;
@end

@implementation StageSelectRootViewController

@synthesize selectedStageImageView = _selectedStageImageView;
@synthesize dvc = _dvc;

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
    //画像を準備
    UIImage*    firstImage = [UIImage imageNamed:@"Apollo.png"];
    //画像をセット＋初期化
    self.selectedStageImageView = [[SelectedStageImageView alloc] initWithImage:firstImage];
    //大きさと位置を指定
    [self.selectedStageImageView setFrame:CGRectMake(0, 0, 360, 320)];
    //デリゲートをセット
    [self.selectedStageImageView setDelegate:self];
    //セット完了
    [self.view addSubview:self.selectedStageImageView];
    
    
    
    
    [thumbScrollView setContentSize:CGSizeMake(500, baseSlideView.frame.size.height)];
    
    //サムネイルにステージを表示する
    //まず画像を準備する
    UIImage* stageImage = [UIImage imageNamed:@"Finder.png"];
    StageThumbImageView* stageView = [[StageThumbImageView alloc] initWithImage:stageImage];
    [stageView setFrame:CGRectMake(10, 10, 70, 100)];
    //デリゲートをセットする
    [stageView setDelegate:self];
        
    
    [thumbScrollView addSubview:stageView];
    
    
    
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
#pragma mark - view Handling methods -
//-----------------------------------
//セレクトされたステージをselectedimageviewに表示するメソッド
- (void)selectedImageNamed:(NSString *)name {
    NSLog(@"StageSelectRootViewController  selectedImageNamed");
    [self.selectedStageImageView removeFromSuperview];
    
    UIImage*    otherImage = [UIImage imageNamed:@"Clock.png"];
    SelectedStageImageView* otherView = [[SelectedStageImageView alloc] initWithImage:otherImage];
    [otherView setDelegate:self];
    [otherView setTag:ZOOM_VIEW_TAG];
    [self.view addSubview:otherView];
    
    
}

- (void)DisplaydoYouWantToPlay:(NSString *)stageName {
    NSLog(@"StageSelectRootViewController  DisplaydoYouWantToPlay");
    
    //プレイしますか？画面を作成する

    //背景画像を作成する
    self.dvc = [[DoYouWantToPlayViewController alloc] init];
    
    [self.view addSubview:self.dvc.view];
    
    
    
}


//-----------------------------------
#pragma mark - stagethumbimageview delegate -
//-----------------------------------
- (void)stageThumbImageViewWasTapped:(StageThumbImageView *)stiv {
    NSLog(@"StageSelectRootViewController StageThumbImageViewWasTapped");
    
    [self selectedImageNamed:[stiv imageName]];
    
}


- (void)stageThumbImageViewStartedTracking:(StageThumbImageView *)stiv {
    NSLog(@"StageSelectRootViewController StageThumbImageViewStartedTracking");
    //[thumbScrollView bringSubviewToFront:tiv];
}

- (void)stageThumbImageViewMoved:(StageThumbImageView *)draggingThumb {
    NSLog(@"StageSelectRootViewController StageThumbImageViewMoved");
    
    
}

- (void)stageThumbImageViewStoppedTracking:(StageThumbImageView *)stiv {
    NSLog(@"StageSelectRootViewController StageThumbImageViewStoppedTracking");
    // if the user lets go of the thumb image view, stop autoscrolling
}


//-----------------------------------
#pragma mark - selectStageimageview delegate -
//-----------------------------------
- (void)selectStageImageViewWasTapped:(SelectedStageImageView *)ssiv {
    NSLog(@"SelectStageImageView selectStageImageViewWasTapped");
    
    //どうやって、ゲームの区別をつけるのか？？考える！
    [self DisplaydoYouWantToPlay:[ssiv imageName]];
    
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
