//
//  StagePlayViewController.m
//  AnzanCode
//
//  Created by ë∫âzÅ@çKëÂ on 11/08/15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//






/*
 課題：入力できる文字は２桁までにする
 
 
 
 */

#import "StagePlayViewController.h"


@implementation StagePlayViewController


@synthesize q1, q2, inputNum, operation;
@synthesize num0,num1,num2,num3,num4,num5,num6,num7,num8,num9;
@synthesize Enter, deleteNum;


//-----------------------------------
#pragma mark -init-
//-----------------------------------


// private common init
- (void) _init {
	
	
	/////////////////////////////////

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
    
    [self makeQuestion];
    
    [self displayQuestion];
        
    
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
    
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"1"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"1"];
        
    }else {
        
    }
    
}

- (IBAction)input2: (id)sender {
    
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"2"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"2"];
        
    }else {
        
    }

}

- (IBAction)input3: (id)sender {
    
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"3"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"3"];
        
    }else {
        
    }
}

- (IBAction)input4: (id)sender {

    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"4"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"4"];
        
    }else {
        
    }
}

- (IBAction)input5: (id)sender {
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"5"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"5"];
        
    }else {
        
    }
}

- (IBAction)input6: (id)sender {
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"6"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"6"];
        
    }else {
        
    }
}

- (IBAction)input7: (id)sender {
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"7"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"7"];
        
    }else {
        
    }
}

- (IBAction)input8: (id)sender {
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"8"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"8"];
        
    }else {
        
    }

}

- (IBAction)input9: (id)sender {
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"9"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"9"];
        
    }else {
        
    }
}

- (IBAction)input0: (id)sender {
    if ([self.inputNum.text length] == 0) {
        self.inputNum.text = [NSString stringWithFormat:@"0"];
        
    }else if([self.inputNum.text length] == 1) {
        self.inputNum.text = [self.inputNum.text stringByAppendingFormat:@"0"];
        
    }else {
        
    }
}

- (IBAction)inputEnter: (id)sender {
    
    //正解か、不正解かをチェックする
    if ([self correctOrIncorrect]) {//正解なら
        //丸付け！
        
        //正解問題数のカウントをあげる
    }else {
        
        
        
    }
    
}

- (IBAction)inputDelete: (id)sender {
    
    self.inputNum.text = [self.inputNum.text substringToIndex:[self.inputNum.text length] - 1];
    
    
}


//-----------------------------------
#pragma mark -util-
//-----------------------------------

//問題を表示するためのメソッド
- (void) displayQuestion {
    
    NSString*   questionOne = [NSString stringWithFormat:@"%d", random1];
    self.q1.text = questionOne;
    
    NSString*   questionTwo = [NSString stringWithFormat:@"%d", random2];    
    self.q2.text = questionTwo;
    
    switch (decideOperation) {
        case 0:
            self.operation.text = [NSString stringWithFormat:@"＋"];
            
            break;
            
        case 1:
            self.operation.text = [NSString stringWithFormat:@"ー"];
            
            break;
            
            
        case 2:
            self.operation.text = [NSString stringWithFormat:@"×"];
            
            break;
            
        case 3:
            
            self.operation.text = [NSString stringWithFormat:@"÷"];
            
            break;
            
        default:
            break;
    }
}


//計算式と入力された値を比較して、正解、不正解を返す
- (BOOL) correctOrIncorrect {
    
    
    
}


//次の問題にするために再表示するためのメソッド
- (void) refleshQuestion {
    
    //まず問題数のカウントを行って、
    
    //まだ問題の残りがあるなば、問題を作成して、。表示
    if (Qnum < 10) {
        [self makeQuestion];
    
        
        
        
    }else  {//すでに問題数が上限ならば終了して、結果を表示する
    
        
        
        
    }
    
    
}


//問題を作成するためのメソッド
- (void) makeQuestion {
    
    
    decideOperation = arc4random()%3;//乱数からOperationを決定して、数字を保持＋表示
    
    
    //計算して、計算結果を保持
    switch (decideOperation) {
        case 0://足し算
            random1 = arc4random()%10;//乱数から数式１を作成して、保持＋表示
            random2 = arc4random()%10;//乱数から数式２を作成して、保持＋表示
            
            result = random1 + random2;
            break;
            
        case 1://引き算
            //引き算は答えがマイナスにならないように考慮
            
            random1 = arc4random()%10;//乱数から数式１を作成して、保持＋表示
            random2 = arc4random()%10;//乱数から数式２を作成して、保持＋表示
            
            if (random2 > random1) {//もし２番目の方が大きかったら
                NSInteger temp = random1;
                random1 = random2;
                random1 = temp;
                result = random2 - random1;
            }else {
                result = random1 - random2;
            }
            
            break;
            
        case 2://かけ算
            random1 = arc4random()%10;//乱数から数式１を作成して、保持＋表示
            random2 = arc4random()%10;//乱数から数式２を作成して、保持＋表示
            
            result = random1 * random2;
            
            break;
            
            
        case 3://割り算
            random1 = arc4random()%10;//乱数から数式１を作成して、保持＋表示
            random2 = arc4random()%10;//乱数から数式２を作成して、保持＋表示
            
            //割り算は、余りがでないように考慮
            while ((random1 % random2) != 0) {
                //作り直し
                random1 = arc4random()%10;//乱数から数式１を作成して、保持＋表示
                random2 = arc4random()%10;//乱数から数式２を作成して、保持＋表示
            }
            
            result = random1 / random2;
            
            
            break;
            
            
        default:
            break;
    }
    
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
