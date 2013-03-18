//
//  View.m
//  Feb21
//
//  Created by Joe Gabela on 2/19/13.
//  Copyright (c) 2013 Joe Gabela. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor yellowColor];        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 32.0];
    
    NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=AAPL&f=sl1t1"];
    
	NSError *error;
	NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    
    CGPoint point = CGPointMake(0.0, 0.0);
    [string drawAtPoint: point withFont: font];
}


@end
