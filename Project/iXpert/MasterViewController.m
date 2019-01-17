//
//  MasterViewController.m
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "OptionViewController.h"

@implementation MasterViewController
@synthesize detailViewController, howtoViewController, optionViewController;

- (IBAction)ChangeViews:(id)sender {
    //BLOCO DE ANIMAÇÂO >>>>>>
    [UIView beginAnimations: @"View Animated" context: nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    
    if (self.optionViewController.view.superview != nil)
    {
        if (self.detailViewController == nil) 
        {
            DetailViewController *detailController = [[DetailViewController alloc] initWithNibName: @"DetailViewController" bundle: 0];
            self.detailViewController = detailController;
            [detailController release];
        }
        
        if (sender == optionViewController.UIButtonHex) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Hex.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Hex";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonHex2) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Hex2.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Hex2";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonBin) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Bin.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Bin";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonBin2) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Bin2.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Bin2";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeNumberPad;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonOct) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Oct.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Oct";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeNumberPad;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonRev) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Rev.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Rev";
            detailViewController.UIButtonDec.hidden = YES;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonLoo) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 Loo.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"Loo";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonB64) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 B64.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"B64";
            detailViewController.UIButtonDec.hidden = NO;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        } else if (sender == optionViewController.UIButtonMD5) {
            UIImage *imgBack = [UIImage imageNamed: @"Background 2 MD5.png"];
            [detailViewController.UIImageViewBack setImage: imgBack];
            detailViewController.NSStringOption = @"MD5";
            detailViewController.UIButtonDec.hidden = YES;
            detailViewController.UITextViewIn.text = nil;
            detailViewController.UITextViewIn.keyboardType = UIKeyboardTypeDefault;
            detailViewController.UITextViewOut.text = nil;
        }
                
        //BLOCO DE ANIMAÇÂO >>>>>>
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView: self.view cache: YES];
        [optionViewController viewWillAppear: YES];
        [detailViewController viewWillDisappear: YES];
        
        [optionViewController.view removeFromSuperview];
        [self.view insertSubview: detailViewController.view atIndex: 0];
        [detailViewController.UIButtonBac addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
        
        [detailViewController viewWillDisappear: YES];
        [optionViewController viewWillAppear: YES];
    } else {
        if (self.optionViewController == nil) 
        {
            OptionViewController *optionController = [[OptionViewController alloc] initWithNibName: @"OptionViewController" bundle: 0];
            self.optionViewController = optionController;
            [optionController release];
        }
        //BLOCO DE ANIMAÇÂO >>>>>>
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromLeft forView: self.view cache: YES];
        [detailViewController viewWillAppear: YES];
        [optionViewController viewWillDisappear: YES];
        
        [detailViewController.view removeFromSuperview];
        [self.view insertSubview: optionViewController.view atIndex: 0];
        
        [optionViewController viewWillDisappear: YES];
        [detailViewController viewWillAppear: YES];        
    }
    [UIView commitAnimations];
}

- (IBAction)HowtoUseViewSwitch:(id)sender {
    //BLOCO DE ANIMAÇÂO >>>>>>
    [UIView beginAnimations: @"View Animated" context: nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    
    if (self.optionViewController.view.superview != nil)
    {
        if (self.howtoViewController == nil) 
        {
            HowtoViewController *howtoController = [[HowtoViewController alloc] initWithNibName: @"HowtoViewController" bundle: 0];
            self.howtoViewController = howtoController;
            [howtoController release];
        }
        //BLOCO DE ANIMAÇÂO >>>>>>
        [UIView setAnimationTransition: UIViewAnimationTransitionCurlDown forView: self.view cache: YES];
        [optionViewController viewWillAppear: YES];
        [howtoViewController viewWillDisappear: YES];
        
        [optionViewController.view removeFromSuperview];
        [self.view insertSubview: howtoViewController.view atIndex: 0];
        [howtoViewController.UIButtonBack addTarget: self action: @selector(HowtoUseViewSwitch:) forControlEvents: UIControlEventTouchUpInside];
        
        [howtoViewController viewWillDisappear: YES];
        [optionViewController viewWillAppear: YES];
    } else {
        if (self.optionViewController == nil) 
        {
            OptionViewController *optionController = [[OptionViewController alloc] initWithNibName: @"OptionViewController" bundle: 0];
            self.optionViewController = optionController;
            [optionController release];
        }
        //BLOCO DE ANIMAÇÂO >>>>>>
        [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.view cache: YES];
        [howtoViewController viewWillAppear: YES];
        [optionViewController viewWillDisappear: YES];
        
        [howtoViewController.view removeFromSuperview];
        [self.view insertSubview: optionViewController.view atIndex: 0];
        
        [optionViewController viewWillDisappear: YES];
        [howtoViewController viewWillAppear: YES];        
    }
    [UIView commitAnimations];
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
    if (detailViewController.view.superview == nil) 
        detailViewController = nil;
    else if (howtoViewController.view.superview == nil)
        howtoViewController = nil;
    else if (optionViewController.view.superview == nil)
        optionViewController = nil;
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    OptionViewController *optionController = [[OptionViewController alloc] initWithNibName: @"OptionViewController" bundle: nil];
    self.optionViewController = optionController;
    [self.view insertSubview: optionController.view atIndex: 0];
    [optionController.UIButtonHex addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonHex2 addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonBin addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonBin2 addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonOct addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonRev addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonLoo addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonB64 addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonMD5 addTarget: self action: @selector(ChangeViews:) forControlEvents: UIControlEventTouchUpInside];
    [optionController.UIButtonHowto addTarget: self action: @selector(HowtoUseViewSwitch:) forControlEvents: UIControlEventTouchUpInside];
    [howtoViewController.UIButtonBack addTarget: self action: @selector(HowtoUseViewSwitch:) forControlEvents: UIControlEventTouchUpInside];
    [optionController release];
}

- (void)viewDidUnload
{
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
    [detailViewController release];
    [howtoViewController release];
    [optionViewController release];
    [super dealloc];
}

@end
