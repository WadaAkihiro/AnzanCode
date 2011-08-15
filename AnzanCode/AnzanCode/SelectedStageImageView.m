//
//  SelectedStageImageView.m
//  AnzanCode
//
//  Created by 村越　幸大 on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SelectedStageImageView.h"


@implementation SelectedStageImageView

@synthesize delegate, imageName;

//-----------------------------------
#pragma mark -init-
//-----------------------------------

//commom private init
- (void) _init {
    
    [self setUserInteractionEnabled:YES];
    [self setExclusiveTouch:YES];
    
}
- (id)initWithImage:(UIImage *)image {
    
    self = [super initWithImage:image];
    
    if (!self) {
        return nil;
    }
    
    [self _init];
    
    return self;
    
}


//-----------------------------------
//
//-----------------------------------



//-----------------------------------
#pragma mark -touchHandlingMethods- 
//-----------------------------------
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"SelectedStageImageView touchesBegan");
    
    //call delegate methods
    
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"SelectedStageImageView touchesMoved");
    
    CGPoint newTouchLocation = [[touches anyObject] locationInView:self];
    
    
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"SelectedStageImageView touchesEnded");
    
    
    //call delegate methods change image
    if ([delegate respondsToSelector:@selector(selectStageImageViewWasTapped:)]) {
        [delegate selectStageImageViewWasTapped:self];
    }
}


- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"SelectedStageImageView touchesCancelled");

    
    //call delegate methods
}



//-----------------------------------
//
//-----------------------------------



@end
