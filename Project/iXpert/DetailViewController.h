//
//  DetailViewController.h
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    NSString *NSStringOption;
    UITextView *UITextViewIn;
    UITextView *UITextViewOut;
    UITextView *UITextViewAct;
    UIButton *UIButtonEnc;
    UIButton *UIButtonDec;
    UIButton *UIButtonBac;
    UIButton *UIButtonDone;
    UIView *InputAccView;
    UIImageView *UIImageViewBack;    
}

@property (nonatomic, retain) NSString *NSStringOption;
@property (nonatomic, retain) IBOutlet UITextView *UITextViewIn;
@property (nonatomic, retain) IBOutlet UITextView *UITextViewOut;
@property (nonatomic, retain) IBOutlet UITextView *UITextViewAct;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonEnc;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonDec;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonBac;
@property (nonatomic, retain) IBOutlet UIButton *UIButtonDone;
@property (nonatomic, retain) IBOutlet UIView *InputAccView;
@property (nonatomic, retain) IBOutlet UIImageView *UIImageViewBack;

- (IBAction)Process:(id)sender;

@end
