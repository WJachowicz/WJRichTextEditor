//
//  WJRichTextView.m
//  WJRichTextEditor
//
//  Created by Wojciech Jachowicz on 24.03.2013.
//  Copyright (c) 2013 Wojciech Jachowicz. All rights reserved.
//

#import "WJRichTextView.h"
#define HTML_CONTENT @"<html><body><div id=\"content\" contenteditable=\"true\">%@</div></body></html>"

@implementation WJRichTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void) loadString:(NSString *)string
{
    [self loadHTMLString:[NSString stringWithFormat:HTML_CONTENT, string] baseURL:nil];
    [self loadJS];
}

-(void) loadJS
{
    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"rich_text_edit" ofType:@"js"];
    if (filePath) {
        NSError * error = nil;
        NSString * content = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
        if (!error) {
            [self stringByEvaluatingJavaScriptFromString:content];
        }
        else{
            NSLog(@"error: %@",[error localizedDescription]);
        }
    }
}

-(void) bold
{
    [self stringByEvaluatingJavaScriptFromString:@"bold()"];
}
-(void) italic
{
    [self stringByEvaluatingJavaScriptFromString:@"italic()"];
}
-(void) underline
{
    [self stringByEvaluatingJavaScriptFromString:@"underline()"];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
