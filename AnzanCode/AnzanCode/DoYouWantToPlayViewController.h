//
//  DoYouWantToPlayViewController.h
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
#import "StagePlayViewController.h"

@protocol DoYouWantToPlayDelegate;

@interface DoYouWantToPlayViewController : UIViewController {
    
    id<DoYouWantToPlayDelegate> delegate;
    
    IBOutlet UIButton*  playButton;
    IBOutlet UIButton*  cancelButton;
    
    StagePlayViewController*    _spvc;
    
}
//-----------------------------------
//      property
//-----------------------------------
@property (nonatomic, retain) id<DoYouWantToPlayDelegate> delegate;
@property (nonatomic, retain) UIButton*  playButton;
@property (nonatomic, retain) UIButton*  cancelButton;
@property (nonatomic, retain) StagePlayViewController*    spvc;

//-----------------------------------
//      methods
//-----------------------------------
- (IBAction) playSelectedStage: (id)sender;
- (IBAction) cancelSelectedStage: (id)sender;

@end


//-----------------------------------
//      protocol
//-----------------------------------


