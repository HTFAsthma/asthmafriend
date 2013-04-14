//
//  LPHBlowViewController.m
//  AsthmaFriend
//
//  Created by stanza on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHBlowViewController.h"

@interface LPHBlowViewController ()

@end

@implementation LPHBlowViewController

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
	// Do any additional setup after loading the view.
    lastBlownFlag = [[NSUserDefaults standardUserDefaults] boolForKey:@"lastBlow"];
    
    if(lastBlownFlag) {
        lastBlownDate = [[NSUserDefaults standardUserDefaults] objectForKey:@"lastBlowDate"];
    }
    
    if(lastBlownFlag) {
        [lastBlownLabel setHidden:NO];
    } else {
        [lastBlownLabel setHidden:YES];
    }
}

- (IBAction)colorPress:(id)sender
{
    NSDate *now = [NSDate date];
    lastBlownDate = now;
    
    [[NSUserDefaults standardUserDefaults] setObject:lastBlownDate forKey:@"lastBlowDate"];
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"lastBlow"];
    
    [lastBlownLabel setText:[NSString stringWithFormat:@"Last recording: %@", lastBlownDate]];
    [lastBlownLabel setHidden:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
