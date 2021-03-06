//
//  ScrollViewController.h
//  MyScrollView
//
//  Created by Spencer Symington on 2019-01-21.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyScrollView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ScrollViewController : UIViewController
@property (weak, nonatomic) IBOutlet MyScrollView *myScrollView;

@end

NS_ASSUME_NONNULL_END
