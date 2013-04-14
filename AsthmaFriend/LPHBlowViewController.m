//
//  LPHBlowViewController.m
//  AsthmaFriend
//
//  Created by stanza on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHBlowViewController.h"
#import "LPHScoreManager.h"

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
    
 /*   if(lastBlownFlag) {
        [lastBlownLabel setHidden:NO];
    } else {
        [lastBlownLabel setHidden:YES];
    }*/
	
    [lastBlownLabel setText:@"Last Recording: Yesterday"];
	[lastBlownLabel setHidden:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
	
	[LPHScoreManager setupScoreLabel:self.navigationItem];
}

- (IBAction)colorPress:(id)sender
{
    NSDate *now = [NSDate date];
    lastBlownDate = now;
    
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"lastBlow"];
    
    [lastBlownLabel setText:[NSString stringWithFormat:@"Last recording: A few seconds ago"]];
    [lastBlownLabel setHidden:NO];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
  //  if(![defaults boolForKey:@"testedToday"])
   // {
        int score = [defaults integerForKey:@"score"];
        score = score + 10;
        [defaults setInteger:score forKey:@"score"];
        [defaults setBool:YES forKey:@"testedToday"];
        CGRect f = CGRectMake([sender frame].origin.x + 10, [sender frame].origin.y - 10, [sender frame].size.width, [sender frame].size.height);
  
        UILabel *l = [[UILabel alloc] init];
        [l setText:@"+10"];
        [l setFrame:f]; // ehhh...
        [l setHidden:NO];
        [l setBackgroundColor:[UIColor clearColor]];
        [[self view] addSubview:l];
        
        [UIView animateWithDuration:1 animations:^{
           l.frame = CGRectMake(f.origin.x, f.origin.y - 20, f.size.width, f.size.height);
        } completion:^(BOOL finished){
 
            if(finished)
            {
                [l setHidden:YES];
            }
        }];
        
	//}
    
    [defaults setObject:lastBlownDate forKey:@"lastBlowDate"];
    [defaults setBool:YES forKey:@"lastBlow"];
    [defaults synchronize];
    
    [informationLabel setHidden:NO];
    switch([sender tag])
    {
        case 1:
            [informationLabel setText:@"Good news!  You seem to be breathing at full capacity.  Keep breathing!"];
            break;
        case 2:
            [informationLabel setText:@"Breathing like this is not good.  Talk to the school nurse as soon as possible!"];
            break;
        case 3:
            [informationLabel setText:@"This breathing is not good!  Seek medical attention immediately!"];
            break;
        default:
            // Just to make the compiler happy
            [informationLabel setHidden:YES]; // This will not blink
            break;
    }
    
	[LPHScoreManager setupScoreLabel:self.navigationItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
