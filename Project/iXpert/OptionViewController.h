//
//  OptionViewController.h
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionViewController : UIViewController <UIActionSheetDelegate> {
    UIButton *UIButtonHex;
    UIButton *UIButtonHex2;
    UIButton *UIButtonBin;
    UIButton *UIButtonBin2;
    UIButton *UIButtonOct;
    UIButton *UIButtonRev;
    UIButton *UIButtonLoo;
    UIButton *UIButtonB64;
    UIButton *UIButtonMD5;
    UIButton *UIButtonHowto;
}    

@property (nonatomic, retain) IBOutlet UIButton *UIButtonHex;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonHex2;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonBin;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonBin2;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonOct;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonRev;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonLoo;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonB64;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonMD5;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonHowto;

- (IBAction)More:(id)sender;

@end
