//
//  AttributorViewController.m
//  Attributor
//
//  Created by Shalvindra Prasad on 9/11/14.
//  Copyright (c) 2014 iOS Tutorial. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;
@end

@implementation AttributorViewController

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
	[self.body.textStorage addAttribute:NSForegroundColorAttributeName
								  value:sender.backgroundColor
								  range:self.body.selectedRange];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
