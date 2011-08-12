//
//  StageThumbImageView.h
//  AnzanCode
//
//  Created by 村越　幸大 on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
/*
 
 ステージを選択するために、stageselectrootviewの下、slideに表示される、小さな画面view
 主に３つのプロパティ
 
 
 １、タップを検出して、そのことをcontrollerに教えるためにdelegateを持つ
 ２、スライドのどこに表示されるのか、home位置情報を持つ
 ３、自分がタップされているのかどうか？
 
 
 さらに機能
 １、自分で勝手にもとの場所に戻る(goHome)
 ２、homeからどれだけすれたのか？計算する(moveByOffset)
 
 
 */
#import <Foundation/Foundation.h>

@protocol StageThumbImageViewDelegate;

@interface StageThumbImageView : UIImageView {
    
    id<StageThumbImageViewDelegate> delegate;//通知するために、コントローラをいれる
    
    
    NSString*   _imageName;//画像の名前
    
    BOOL        dragging;//ドラッグされているかどうかのフラグ
    
    CGRect      home;//最初の位置
    
    CGPoint     touchLocation;//タッチされた場所
    
}

//-----------------------------------
//      プロパティ
//-----------------------------------
@property (nonatomic, assign) id<StageThumbImageViewDelegate> delegate;
@property (nonatomic, retain) NSString*   imageName;
@property (nonatomic, assign) CGRect      home;
@property (nonatomic, assign) CGPoint     touchLocation;



//-----------------------------------
//      メソッド
//-----------------------------------

- (void) goHome;
- (void) moveByOffset:(CGPoint)offset;



@end
