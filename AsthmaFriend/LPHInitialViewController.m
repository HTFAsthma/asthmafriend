//
//  LPHInitialViewController.m
//  AsthmaFriend
//
//  Created by stanza on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHInitialViewController.h"
#import "LPHScoreManager.h"

@interface LPHInitialViewController ()

@end

@implementation LPHInitialViewController

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
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	if([defaults integerForKey:@"score"] == 0)
	{
		[defaults setInteger:30 forKey:@"score"];
		[defaults synchronize];
	}
    // Cheat
    [defaults setInteger:30 forKey:@"score"];
    [defaults setBool:NO forKey:@"testedToday"];
    
    [defaults synchronize];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
