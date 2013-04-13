//
//  LPHMainViewController.h
//  AsthmaFriend
//
//  Created by stanza on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHFlipsideViewController.h"

@interface LPHMainViewController : UIViewController <LPHFlipsideViewControllerDelegate, UIPopoverControllerDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;

@end
