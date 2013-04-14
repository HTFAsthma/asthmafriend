//
//  LPHHistoryViewController.m
//  AsthmaFriend
//
//  Created by Krzysztof Grzywacz on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import "LPHHistoryViewController.h"
#import "LPHScoreManager.h"

typedef enum HistoryViewMode : NSUInteger {
    WeekHistoryViewMode = 0,
    MonthHistoryViewMode,
    YearHistoryViewMode
} HistoryViewMode;

@interface LPHHistoryViewController ()
{
	BOOL _isLoaded;
}

@property (nonatomic) HistoryViewMode viewMode;

@end

@implementation LPHHistoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _isLoaded = NO;
    }
    return self;
}

- (void)viewDidLoad
{
	self.viewMode = WeekHistoryViewMode;
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	[LPHScoreManager setupScoreLabel:self.navigationItem];
	
	if(!_isLoaded)
	{
		self.periodSegmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
	
		UIColor *tintColor = [UIColor colorWithRed: 14/255.0 green:153/255.0 blue:74/255.0 alpha:1.0];
		self.periodSegmentedControl.tintColor = tintColor;
	
		UIColor *selectedTintColor = [UIColor colorWithRed: 12/255.0 green:89/255.0 blue:46/255.0 alpha:1.0];
		[[[self.periodSegmentedControl subviews] objectAtIndex:0] setTintColor:selectedTintColor];
	
		self.periodSegmentedControl.selectedSegmentIndex = 0;
		[self changeVisibleView:self.viewMode];
		_isLoaded = YES;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)segmentChanged:(id)sender {
	self.viewMode = self.periodSegmentedControl.selectedSegmentIndex;
	[self changeVisibleView:self.viewMode];
}

- (void)changeVisibleView:(HistoryViewMode)viewMode
{
	self.weekView.hidden = viewMode == WeekHistoryViewMode ? NO : YES;
	self.monthView.hidden = viewMode == MonthHistoryViewMode ? NO : YES;
	self.yearView.hidden = viewMode == YearHistoryViewMode ? NO : YES;
}

@end
