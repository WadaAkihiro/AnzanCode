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
    NSInteger random1;//一つ目の数字用
    NSInteger random2;//２つ目の数字用
    NSInteger decideOperation;//＋ー×÷を決定するための乱数
    
    
    //計算式の答え
    NSInteger result;
    
    //入力された数式
    NSInteger input;
    
    
    NSInteger Qnum;//問題数
    
    NSInteger rightAnswer;//正解数をカウントする
    

    //問題が出力されるラベル
    IBOutlet UILabel*   q1;//１つ目の数字
    IBOutlet UILabel*   q2;//２つ目の数字
    
    IBOutlet UILabel*   operation;//＋ー×÷表示するためのラベル
    IBOutlet UILabel*   inputNum;//入力した数字を表示するラベル
    

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
    
    
    
    //enterボタン
    IBOutlet UIButton*  Enter;
    
    //deleteボタン
    IBOutlet UIButton*  deleteNum;
    
}
//-----------------------------------
//      property
//-----------------------------------
@property (nonatomic, retain)UILabel*   q1;
@property (nonatomic, retain)UILabel*   q2;
@property (nonatomic ,retain)UILabel*   operation;
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


//　プライベートメソッド

- (void) displayQuestion;//問題を表示するためのメソッド
- (BOOL) correctOrIncorrect;//計算式と入力された値を比較して、正解、不正解を返す
- (void) refleshQuestion;//次の問題にするために再表示するためのメソッド
- (void) makeQuestion;//問題を作成するためのメソッド



@end


//-----------------------------------
//      protocol
//-----------------------------------


