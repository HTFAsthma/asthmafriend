//
//  LPHAsthmaFactsViewController.m
//  AsthmaFriend
//
//  Created by Krzysztof Grzywacz on 4/14/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHAsthmaFactsViewController.h"
#import "LPHScoreManager.h"

@interface LPHAsthmaFactsViewController ()

@end

@implementation LPHAsthmaFactsViewController

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

@end
