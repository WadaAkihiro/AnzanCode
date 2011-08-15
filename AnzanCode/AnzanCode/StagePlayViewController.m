//
//  StagePlayViewController.m
//  AnzanCode
//
//  Created by ë∫âzÅ@çKëÂ on 11/08/15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StagePlayViewController.h"


@implementation StagePlayViewController


@synthesize q1, q2, inputNum;
@synthesize num0,num1,num2,num3,num4,num5,num6,num7,num8,num9;
@synthesize Enter, deleteNum;


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
    
    self = [super initWithNibName:@"StagePlayViewController" bundle:nil];
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
    
    //２０までの乱数を取得
    random1 = arc4random()%20;
    
    //10までの乱数を取得
    random2 = arc4random()%10;
    
    
    NSString*   randomString1 = [NSString stringWithFormat:@"%d", random1];
    NSString*   randomString2 = [NSString stringWithFormat:@"%d", random2];

    NSLog(@"%@" , randomString1);
    NSLog(@"%@" , randomString2);
    
    self.q1.text = randomString1;
    self.q2.text = randomString2;
    
    
    
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
#pragma mark - IBActionMethids -
//-----------------------------------

- (IBAction)input1: (id)sender {
    
    
}

- (IBAction)input2: (id)sender {
    
    
}

- (IBAction)input3: (id)sender {
    
    
}

- (IBAction)input4: (id)sender {
    
    
}

- (IBAction)input5: (id)sender {
    
    
}

- (IBAction)input6: (id)sender {
    
    
}

- (IBAction)input7: (id)sender {
    
}

- (IBAction)input8: (id)sender {
    
    
}

- (IBAction)input9: (id)sender {
    
    
}

- (IBAction)input0: (id)sender {
    
    
}

- (IBAction)inputEnter: (id)sender {
    
    
}

- (IBAction)inputDelete: (id)sender {
    
    
}


//-----------------------------------
#pragma mark -util-
//-----------------------------------

//四則演算を決定する

- (void) sisoku {
    
    NSInteger   sisoku = arc4random()%3;
    
    switch (sisoku) {
        //足し算
        case 0:
            
            break;
        //引き算
        case 1:
            
            
            break;
        //かけ算    
        case 2:
            
            break;
        //割り算    
        case 3:
            
            
            break;
            
            
        default:
            break;
    }
    
}


//問題をリフレッシュする
- (void)reflesh {
    
    
    
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
