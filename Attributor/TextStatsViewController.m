//
//  TextStatsViewController.m
//  Attributor
//
//  Created by Shalvindra Prasad on 9/23/14.
//  Copyright (c) 2014 iOS Tutorial. All rights reserved.
//

#import "TextStatsViewController.h"

@interface TextStatsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorfulCharsLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlinedCharsLabel;
@end

@implementation TextStatsViewController

- (void)setTextToAnlyze:(NSAttributedString *)textToAnlyze {
	_textToAnlyze = textToAnlyze;
	if (self.view.window) {
		[self updateUI];
	}
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self updateUI];
}

- (void)updateUI {
	self.colorfulCharsLabel.text = [NSString stringWithFormat:@"%d colorful characters",
									[[self charactersWithAttribute:NSForegroundColorAttributeName] length]];
	self.outlinedCharsLabel.text = [NSString stringWithFormat:@"%d outlined characters",
									[[self charactersWithAttribute:NSStrokeWidthAttributeName] length]];
}

- (NSAttributedString *)charactersWithAttribute:(NSString *) attributeName {
	NSMutableAttributedString *characters = [[NSMutableAttributedString alloc] init];
	
	int index = 0;
	while (index < [self.textToAnlyze length]) {
		NSRange range;
		id value = [self.textToAnlyze attribute:attributeName atIndex:index effectiveRange:&range];
		
		if (value) {
			[characters appendAttributedString:[self.textToAnlyze attributedSubstringFromRange:range]];
			index = range.location + range.length;
		} else {
			index++;
		}
	}
	
	return characters;
}

@end