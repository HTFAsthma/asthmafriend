//
//  LPHFlipsideViewController.h
//  AsthmaFriend
//
//  Created by stanza on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LPHFlipsideViewController;

@protocol LPHFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(LPHFlipsideViewController *)controller;
@end

@interface LPHFlipsideViewController : UIViewController

@property (weak, nonatomic) id <LPHFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
