//
//  LPHHistoryViewController.h
//  AsthmaFriend
//
//  Created by Krzysztof Grzywacz on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPHHistoryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *periodSegmentedControl;
@property (weak, nonatomic) IBOutlet UIView *weekView;
@property (weak, nonatomic) IBOutlet UIView *monthView;
@property (weak, nonatomic) IBOutlet UIView *yearView;

- (IBAction)segmentChanged:(id)sender;

@end
