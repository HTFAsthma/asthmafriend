//
//  LPHRewardsViewController.m
//  AsthmaFriend
//
//  Created by Krzysztof Grzywacz on 4/14/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHRewardsViewController.h"
#import "LPHScoreManager.h"

@interface LPHRewardsViewController ()

@property (strong, nonatomic) UILabel *scoreLabel;

@end

@implementation LPHRewardsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
	
	[LPHScoreManager setupScoreLabel:self.navigationItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstRewardTapped:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reward"
													message:@"Would like like to complete purchase of free music - coupon to AppStore?"
												   delegate:self
										  cancelButtonTitle:@"OK"
										  otherButtonTitles:@"Cancel", nil];
	[alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

	if (buttonIndex == 0)
	{
	}
}
@end
