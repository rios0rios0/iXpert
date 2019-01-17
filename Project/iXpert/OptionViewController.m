//
//  OptionViewController.m
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import "OptionViewController.h"

@implementation OptionViewController
@synthesize UIButtonHex, UIButtonHex2, UIButtonBin, UIButtonBin2, UIButtonOct, UIButtonRev, UIButtonLoo, UIButtonB64, UIButtonMD5, UIButtonHowto;

- (IBAction)More:(id)sender {
    UIActionSheet *As = [[UIActionSheet alloc] initWithTitle: @"More and Info" delegate: self cancelButtonTitle: nil destructiveButtonTitle: nil otherButtonTitles: @"More Apps", @"About This App", nil];
    [As setActionSheetStyle: UIActionSheetStyleBlackTranslucent];
    [As showInView: self.view];
    [As release];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        // MY APPLE ITUNES CHANNEL
    } else if (buttonIndex == 1) {
        UIAlertView *AV = [[UIAlertView alloc] initWithTitle: @"Info (About)" message: @"iXpert Conversor v1.0 \n\nCreated By: Felipe Rios \nCopyright © 1997 - 2012, \nAll Rights Reserved. \n\n*Twitter: @FDeveloping" delegate: self cancelButtonTitle: @"OK" otherButtonTitles: nil];
        [AV show];
        [AV release];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.UIButtonHex = nil;
    self.UIButtonHex2 = nil;
    self.UIButtonBin = nil;
    self.UIButtonBin2 = nil;
    self.UIButtonOct = nil;
    self.UIButtonRev = nil;
    self.UIButtonLoo = nil;
    self.UIButtonB64 = nil;
    self.UIButtonMD5 = nil;
    self.UIButtonHowto = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [UIButtonHex release];
    [UIButtonHex2 release];
    [UIButtonBin release];
    [UIButtonBin2 release];
    [UIButtonOct release];
    [UIButtonRev release];
    [UIButtonLoo release];
    [UIButtonB64 release];
    [UIButtonMD5 release];
    [UIButtonHowto release];
    [super dealloc];
}

@end
