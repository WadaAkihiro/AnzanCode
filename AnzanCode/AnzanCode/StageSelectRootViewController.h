//
//  StageSelectRootViewController.h
//  AnzanCode
//
//  Created by ë∫âzÅ@çKëÂ on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

/*
 
 ステージセレクト画面を管理するcontrollerクラス
 　主に３つのプロパティ
 
 １、ステージを選択するためのscrollview＋scrollviewをのせるためのベースビュー
 ２、
 ３、自分がタップされているのかどうか？
 
 
 さらに機能。大きくわけて、５種類の機能群
 
 １、初期化
 
 ２、ビューのライフサイクルとハンドリング
 
 ３、ステージ選択のためのサムネイルビューに関するメソッド
 ３−１、１、タップにより、選択されたステージからの通知にを受けて、selectedstageimageviewの中身を入れ替える
 
 ４、ゲームをプレイするかどうかのメソッド
 ４−１、selectedstageimageがタップされると、プレイするかどうかユーザーに聞くビューを表示
 
 ５、Util　便利ツール
 
 */

#import <UIKit/UIKit.h>
#import "StageThumbImageView.h"
#import "SelectedStageImageView.h"
#import "DoYouWantToPlayViewController.h"


@interface StageSelectRootViewController : UIViewController
<UIScrollViewDelegate, StageThumbImageViewDelegate,SelectedStageImageViewDelegate> {
    
    IBOutlet SelectedStageImageView* _selectedStageImageView;
    
    IBOutlet UIView*     baseSlideView;
    IBOutlet UIScrollView*   thumbScrollView;
    
    //プレイしますか？画面用
    DoYouWantToPlayViewController*  _dvc;
    BOOL            wasTapped;
    
}
@property (nonatomic, retain) SelectedStageImageView* selectedStageImageView;
@property (nonatomic, retain) DoYouWantToPlayViewController*  dvc;
@end

