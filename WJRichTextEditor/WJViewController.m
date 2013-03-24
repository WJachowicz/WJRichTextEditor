//
//  WJViewController.m
//  WJRichTextEditor
//
//  Created by Wojciech Jachowicz on 24.03.2013.
//  Copyright (c) 2013 Wojciech Jachowicz. All rights reserved.
//

#import "WJViewController.h"


@interface WJViewController ()
@property(nonatomic, retain) WJRichTextView * richTextView;
@end

@implementation WJViewController
@synthesize richTextView = _richTextView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.richTextView = [[[WJRichTextView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)] autorelease];
    [self.view addSubview:_richTextView];
    [_richTextView loadString:@"Test"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) dealloc
{
    self.richTextView = nil;
    [super dealloc];
}
@end
