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
    [self defineBarButtonItems];
}

-(void) defineBarButtonItems
{
    NSMutableArray * items = [NSMutableArray array];
    UIBarButtonItem * btnBold = [[UIBarButtonItem alloc] initWithTitle:@"B" style:UIBarButtonItemStyleBordered target:self action:@selector(onBoldSelected:)];
    UIBarButtonItem * btnItalic = [[UIBarButtonItem alloc] initWithTitle:@"I" style:UIBarButtonItemStyleBordered target:self action:@selector(onItalicSelected:)];
    UIBarButtonItem * btnUnderline = [[UIBarButtonItem alloc] initWithTitle:@"U" style:UIBarButtonItemStyleBordered target:self action:@selector(onUnderlineSelected:)];
    
    [items addObject:btnBold];
    [items addObject:btnItalic];
    [items addObject:btnUnderline];
    
    [btnBold release];
    [btnItalic release];
    [btnUnderline release];
    
    self.navigationItem.leftBarButtonItems = items;
}

#pragma mark - BarButtonItems actions

-(void) onBoldSelected:(id) sender
{
    [_richTextView bold];
}

-(void) onItalicSelected:(id) sender
{
    [_richTextView italic];
}

-(void) onUnderlineSelected:(id) sender
{
    [_richTextView underline];
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
