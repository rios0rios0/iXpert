//
//  MasterViewController.h
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "HowtoViewController.h"
#import "OptionViewController.h"

@interface MasterViewController : UIViewController {
    DetailViewController *detailViewController;
    HowtoViewController *howtoViewController;
    OptionViewController *optionViewController;
}

@property (nonatomic, retain) DetailViewController *detailViewController;
@property (nonatomic, retain) HowtoViewController *howtoViewController;
@property (nonatomic, retain) OptionViewController *optionViewController;

- (IBAction)ChangeViews:(id)sender;
- (IBAction)HowtoUseViewSwitch:(id)sender;

@end
