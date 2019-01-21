//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Spencer Symington on 2019-01-21.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)panGesture:(UIPanGestureRecognizer*)sender {
    NSLog(@"did pan");
    CGPoint translationInView = [sender translationInView:self];
    CGRect oldBounds = self.bounds;
    
    float x = oldBounds.origin.x - translationInView.x;
    float y = oldBounds.origin.y - translationInView.y;
    float width = oldBounds.size.width;
    float height = oldBounds.size.height;
    
    if(x+width > self.contentSize.width){
        x = self.contentSize.width - width;
    }
    if(x < 0){
        x = 0;
    }
    if(y < 0){
        y = 0;
    }
    if(y+height > self.contentSize.height){
        y = self.contentSize.height - height;
    }
    
    CGRect newBounds = CGRectMake(x,y,width,height);
    
    
    
    self.bounds = newBounds;
    
}

-(void)findContentSize{
    
    //get the furthest x and y points to figure out how big we should make the container rect
    
   
    float maxX = 0.0;
    float maxY = 0.0;
    //cycle through all the subviews and find the furthest x and y points
    for (UIView *subview in self.subviews){
        float subViewMaxX = subview.frame.origin.x + subview.frame.size.width;
        if(subViewMaxX > maxX){
            maxX = subViewMaxX;
        }
        float subViewMaxY = subview.frame.origin.y + subview.frame.size.height;
        if(subViewMaxY > maxY){
            maxY = subViewMaxY;
        }
    }
    //add 8 points padding for good measure
    self.contentSize = CGSizeMake(maxX+8, maxY+8);
}

@end
