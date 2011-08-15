//
//  StagePlayViewController.h
//  AnzanCode
//
//  Created by ë∫âzÅ@çKëÂ on 11/08/15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

/*
 
 how this class??
 
 property:
 1,
 2,
 3,
 4,
 5,
 
 methods:
 1,
 2,
 3,
 4,
 5,
 
 
 */


#import <UIKit/UIKit.h>


@interface StagePlayViewController : UIViewController {
    
    //乱数を作る
    NSInteger random1;
    NSInteger random2;
    
    NSInteger result;
    
    NSInteger input;

    //問題が出力されるラベル
    IBOutlet UILabel*   q1;
    IBOutlet UILabel*   q2;
    
    //入力した数字を表示するラベル
    IBOutlet UILabel*   inputNum;
    

    //ナンバータッチパネル
    IBOutlet UIButton*  num1;
    IBOutlet UIButton*  num2;
    IBOutlet UIButton*  num3;
    IBOutlet UIButton*  num4;
    IBOutlet UIButton*  num5;
    IBOutlet UIButton*  num6;
    IBOutlet UIButton*  num7;
    IBOutlet UIButton*  num8;
    IBOutlet UIButton*  num9;
    IBOutlet UIButton*  num0;
    
    
    
    //enter
    IBOutlet UIButton*  Enter;
    
    //delete
    IBOutlet UIButton*  deleteNum;
    
}
//-----------------------------------
//      property
//-----------------------------------
@property (nonatomic, retain)UILabel*   q1;
@property (nonatomic, retain)UILabel*   q2;
@property (nonatomic, retain)UILabel*   inputNum;
@property (nonatomic, retain)UIButton*  num1;
@property (nonatomic, retain)UIButton*  num2;
@property (nonatomic, retain)UIButton*  num3;
@property (nonatomic, retain)UIButton*  num4;
@property (nonatomic, retain)UIButton*  num5;
@property (nonatomic, retain)UIButton*  num6;
@property (nonatomic, retain)UIButton*  num7;
@property (nonatomic, retain)UIButton*  num8;
@property (nonatomic, retain)UIButton*  num9;
@property (nonatomic, retain)UIButton*  num0;
@property (nonatomic, retain)UIButton*  Enter;
@property (nonatomic, retain)UIButton*  deleteNum;

//-----------------------------------
//      methods
//-----------------------------------

- (IBAction)input1: (id)sender;
- (IBAction)input2: (id)sender;
- (IBAction)input3: (id)sender;
- (IBAction)input4: (id)sender;
- (IBAction)input5: (id)sender;
- (IBAction)input6: (id)sender;
- (IBAction)input7: (id)sender;
- (IBAction)input8: (id)sender;
- (IBAction)input9: (id)sender;
- (IBAction)input0: (id)sender;
- (IBAction)inputEnter: (id)sender;
- (IBAction)inputDelete: (id)sender;

@end


//-----------------------------------
//      protocol
//-----------------------------------


