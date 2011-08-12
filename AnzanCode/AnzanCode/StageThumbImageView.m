//
//  StageThumbImageView.m
//  AnzanCode
//
//  Created by 村越　幸大 on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StageThumbImageView.h"

#define DRAG_THRESHOLD 10
float   distanceBetweenPoints(CGPoint a, CGPoint b);


@implementation StageThumbImageView

@synthesize delegate, imageName = _imageName;
@synthesize home, touchLocation;

- (void)_init {
    [self setUserInteractionEnabled:YES];
    [self setExclusiveTouch:YES];
}

- (id) initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (!self) {
        return  nil;
    }
    
    [self _init];
    
    return self;
}

//-----------------------------------
#pragma mark -touchHandlingMethods- 
//-----------------------------------
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"stagethumbimageview touchesBegan");
    
    touchLocation = [[touches anyObject] locationInView:self];
    
    //call delegate methods
    if ([delegate respondsToSelector:@selector(stageThumbImageViewStartedTracking:)])
        [delegate stageThumbImageViewStartedTracking:self];
    
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"stagethumbimageview touchesMoved");
    
    CGPoint newTouchLocation = [[touches anyObject] locationInView:self];
    
    // if we're already dragging, move our frame
    if (dragging) {
        float   deltaX = newTouchLocation.x - touchLocation.x;
        float   deltaY = newTouchLocation.y - touchLocation.y;
        [self moveByOffset:CGPointMake(deltaX, deltaY)];
    }
    
    //if we're no dragging yet, check if we've meved far enough
    else if(distanceBetweenPoints(touchLocation, newTouchLocation) > DRAG_THRESHOLD) {
        touchLocation = newTouchLocation;
        dragging = YES;
    }
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"stagethumbimageview touchesEnded");
    if (dragging) {
        [self goHome];
        dragging = NO;
    } else if ([[touches anyObject] tapCount] == 1) {
        //call delegate methods
        if ([delegate respondsToSelector:@selector(stageThumbImageViewWasTapped:)])
            [delegate stageThumbImageViewWasTapped:self];
    }
    //call delegate methods
    if ([delegate respondsToSelector:@selector(stageThumbImageViewStoppedTracking:)]) 
        [delegate stageThumbImageViewStoppedTracking:self];
    
    
}


- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"stagethumbimageview touchesCancelled");
    
    [self goHome];
    dragging = NO;
    //call delegate methods
    if ([delegate respondsToSelector:@selector(stageThumbImageViewStoppedTracking:)]) 
        [delegate stageThumbImageViewStoppedTracking:self];
    
    
}


//-----------------------------------
#pragma mark -util-
//-----------------------------------

- (void) goHome {
    NSLog(@"stagethumbimageview goHome");
    
    //distance is in pixels
    float distanceFromHome = distanceBetweenPoints([self frame].origin, [self home].origin);
    //duration is in seconds
    float animationDuration = 0.1 + distanceFromHome * 0.001;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:animationDuration];
    [self setFrame:[self home]];
    [UIView commitAnimations];
}

- (void) moveByOffset:(CGPoint)offset {
    NSLog(@"stagethumbimageview moveByOffset");
    
    CGRect frame = [self frame];
    frame.origin.x += offset.x;
    frame.origin.y += offset.y;
    [self setFrame:frame];
    
    //call delegate methods
    
}

@end


//-----------------------------------
//  others
//-----------------------------------

float distanceBetweenPoints(CGPoint a, CGPoint b) {
    float deltaX = a.x - b.x;
    float deltaY = a.y - b.y;
    return sqrtf( (deltaX * deltaX) + (deltaY * deltaY) );
}