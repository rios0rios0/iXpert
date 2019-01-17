//
//  DetailViewController.m
//  iXpert
//
//  Created by Felipe Rios on 09/03/12.
//  Copyright (c) 1997 - 2012. All rights reserved.
//

#import "DetailViewController.h"
#import "RatingSystem.h"
#import "Hashes.h"

#define forHex @"ABCDEFabcdef0123456789"
#define forOct @"0123456789"
#define forBin @"0123456789"

@implementation DetailViewController
@synthesize NSStringOption, UITextViewIn, UITextViewOut, UITextViewAct, UIButtonEnc, UIButtonDec, UIButtonBac, UIButtonDone, InputAccView, UIImageViewBack;

#pragma mark TextView Delegate

-(void)createInputAccessoryView{
    InputAccView = [[UIView alloc] initWithFrame: CGRectMake(10.0, 0.0, 319.0, 44.0)];
    UIImageView *imgAcc = [[UIImageView alloc] initWithFrame: CGRectMake(0.0, 0.0, 319.0, 44.0)];
    UIImage *imgTmp = [UIImage imageNamed: @"AccView Background.png"];
    [imgAcc setImage: imgTmp];
    [imgTmp release];

    UIButtonDone = [UIButton buttonWithType: UIButtonTypeCustom];
    [UIButtonDone setFrame: CGRectMake(265.0, 7.0, 51.0, 30.0)];
    [UIButtonDone addTarget:self action:@selector(doneTyping) forControlEvents:UIControlEventTouchUpInside];
    
    [InputAccView addSubview: imgAcc];
    [InputAccView addSubview: UIButtonDone];
    [imgAcc release];
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    [self createInputAccessoryView];
    [textView setInputAccessoryView: InputAccView];
    UITextViewAct = textView;
}

- (void)doneTyping{
    [UITextViewAct resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([NSStringOption isEqualToString: @"Hex2"]) {
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString: forHex] invertedSet];
        NSString *filtered = [[text componentsSeparatedByCharactersInSet: cs] componentsJoinedByString: @""];
        return [text isEqualToString: filtered];
    } else if ([NSStringOption isEqualToString: @"Bin2"]) {
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString: forBin] invertedSet];
        NSString *filtered = [[text componentsSeparatedByCharactersInSet: cs] componentsJoinedByString: @""];
        return [text isEqualToString: filtered];
    } else if ([NSStringOption isEqualToString: @"Oct"]) {
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString: forOct] invertedSet];
        NSString *filtered = [[text componentsSeparatedByCharactersInSet: cs] componentsJoinedByString: @""];
        return [text isEqualToString: filtered];
    } else {
        return YES;
    }
}

#pragma mark Encoding and Decoding cicle

- (IBAction)Process:(id)sender {
    if (sender == UIButtonEnc) {
        if ([NSStringOption isEqualToString: @"Hex"]) {
            UITextViewOut.text = [RatingSystem ASCIItoHex: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Hex2"]) {
            UITextViewOut.text = [RatingSystem DectoHex: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Bin"]) {
            UITextViewOut.text = [RatingSystem ASCIItoBin: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Bin2"]) {
            UITextViewOut.text = [RatingSystem DectoBin: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Oct"]) {
            UITextViewOut.text = [RatingSystem DectoOct: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Rev"]) {
            UITextViewOut.text = [RatingSystem ReverASCII: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Loo"]) {
            UITextViewOut.text = [RatingSystem ASCIItoLoo: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"B64"]) {
            UITextViewOut.text = [Hashes EncodeB64: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"MD5"]) {
            UITextViewOut.text = [Hashes EncodeMD5: UITextViewIn.text];
        }
    } else {
        if ([NSStringOption isEqualToString: @"Hex"]) {
            UITextViewOut.text = [RatingSystem HextoASCII: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Hex2"]) {
            UITextViewOut.text = [RatingSystem HextoDec: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Bin"]) {
            UITextViewOut.text = [RatingSystem BintoASCII: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Bin2"]) {
            UITextViewOut.text = [RatingSystem BintoDec: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Oct"]) {
            UITextViewOut.text = [RatingSystem OcttoDec: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"Loo"]) {
            UITextViewOut.text = [RatingSystem LootoASCII: UITextViewIn.text];
        } else if ([NSStringOption isEqualToString: @"B64"]) {
            UITextViewOut.text = [Hashes DecodeB64: [UITextViewIn.text cStringUsingEncoding: NSASCIIStringEncoding] length: UITextViewIn.text.length];
        }
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
    if ([self.NSStringOption isEqualToString: @"Hex"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Hex.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    } else if ([self.NSStringOption isEqualToString: @"Hex2"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Hex2.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    } else if ([self.NSStringOption isEqualToString: @"Bin"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Bin.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    } else if ([self.NSStringOption isEqualToString: @"Bin2"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Bin2.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeNumberPad;
    } else if ([self.NSStringOption isEqualToString: @"Oct"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Oct.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeNumberPad;
    } else if ([self.NSStringOption isEqualToString: @"Rev"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Rev.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = YES;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    } else if ([self.NSStringOption isEqualToString: @"Loo"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 Loo.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    } else if ([self.NSStringOption isEqualToString: @"B64"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 B64.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = NO;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    } else if ([self.NSStringOption isEqualToString: @"MD5"]) {
        UIImage *imgBack = [UIImage imageNamed: @"Background 2 MD5.png"];
        [self.UIImageViewBack setImage: imgBack];
        UIButtonDec.hidden = YES;
        UITextViewIn.keyboardType = UIKeyboardTypeDefault;
    }
    
    [self createInputAccessoryView];
    [UITextViewIn setInputAccessoryView: InputAccView];
    UITextViewAct = UITextViewIn;
}

- (void)viewDidUnload
{
    self.NSStringOption = nil;
    self.UITextViewIn = nil;
    self.UITextViewOut = nil;
    self.UITextViewAct = nil;
    self.UIButtonEnc = nil;
    self.UIButtonDec = nil;
    self.UIButtonBac = nil;
    self.UIButtonDone = nil;
    self.InputAccView = nil;
    self.UIImageViewBack = nil;
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
    [NSStringOption release];
    [UITextViewIn release];
    [UITextViewOut release];
    [UITextViewAct release];
    [UIButtonEnc release];
    [UIButtonDec release];
    [UIButtonBac release];
    [UIButtonDone release];
    [InputAccView release];
    [UIImageViewBack release];
    [super dealloc];
}

@end
