//
//  LPHBlowViewController.h
//  AsthmaFriend
//
//  Created by stanza on 4/13/13.
//  Copyright (c) 2013 Laaph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPHBlowViewController : UIViewController
{
    NSDate *lastBlownDate;
    bool lastBlownFlag;
    IBOutlet UILabel *lastBlownLabel;
}
-(IBAction)colorPress:(id)sender;
@end
