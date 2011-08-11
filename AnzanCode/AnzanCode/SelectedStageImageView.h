//
//  SelectedStageImageView.h
//  AnzanCode
//
//  Created by 村越　幸大 on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
/*
 
 選択されたステージを、stageselectrootviewに表示、メイン画面view
 主に３つのプロパティ
 
 
 １、タップを検出して、そのことをcontrollerに教えるためにdelegateを持つ
 ２、自分がタップされているのかどうか？
 
 
 さらに機能
 
 
 */


#import <Foundation/Foundation.h>

@protocol SelectedStageImageViewDelegate;


@interface SelectedStageImageView : UIImageView {
    
    id<SelectedStageImageViewDelegate> delegate;
    
}

//-----------------------------------
//      プロパティ
//-----------------------------------
@property (nonatomic, assign) id<SelectedStageImageViewDelegate> delegate;


@end

//-----------------------------------
//      プロトコル
//-----------------------------------
@protocol SelectedStageImageViewDelegate <NSObject>

//このプロトコルを宣言したら、必ずこのメソッドを実装しなければならない！
//タップされたステージをプレイするかどうか？決定するビューを表示するメソッド
- (void)displayStage: (UIImageView *)selectedStage;

@end
