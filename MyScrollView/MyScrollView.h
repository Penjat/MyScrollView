//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Spencer Symington on 2019-01-21.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyScrollView : UIView
@property (nonatomic)CGSize contentSize;
- (IBAction)panGesture:(id)sender;
-(void)findContentSize;

@end

NS_ASSUME_NONNULL_END
