//
//  LPHScoreManager.m
//  AsthmaFriend
//
//  Created by Krzysztof Grzywacz on 4/14/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHScoreManager.h"

@implementation LPHScoreManager

+ (void)setupScoreLabel:(UINavigationItem *)navItem
{
	UIImage *image = [UIImage imageNamed:@"score_badge_white.png"];
	CGRect frameimg = CGRectMake(0, 0, image.size.width, image.size.height);
	UIButton *button = [[UIButton alloc] initWithFrame:frameimg];
	UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(1, 2, image.size.width - 5, image.size.height - 5)];
	scoreLabel.backgroundColor = [UIColor clearColor];
	scoreLabel.textColor = [UIColor whiteColor];
	scoreLabel.textAlignment = NSTextAlignmentCenter;
	scoreLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
	UIView *view = [[UIView alloc] initWithFrame:frameimg];
	[view addSubview:button];
	[view addSubview:scoreLabel];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	scoreLabel.text = [NSString stringWithFormat:@"%d", [defaults integerForKey:@"score"]];
	
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setShowsTouchWhenHighlighted:YES];
	
	UIBarButtonItem *barButton =[[UIBarButtonItem alloc] initWithCustomView:view];
	navItem.rightBarButtonItem = barButton;
}

@end
