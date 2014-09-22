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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
	[self.body.textStorage addAttribute:NSForegroundColorAttributeName
								  value:sender.backgroundColor
								  range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection {
	[self.body.textStorage addAttributes:@{NSStrokeWidthAttributeName : @-3,
										   NSStrokeColorAttributeName : [UIColor blackColor]}
								   range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection {
	[self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
									 range:self.body.selectedRange];
}

@end