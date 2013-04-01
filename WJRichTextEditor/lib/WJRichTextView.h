//
//  WJRichTextView.h
//  WJRichTextEditor
//
//  Created by Wojciech Jachowicz on 24.03.2013.
//  Copyright (c) 2013 Wojciech Jachowicz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJRichTextView : UIWebView

-(void) loadString:(NSString *) string;
-(void) bold;
-(void) italic;
-(void) underline;
-(void) changeFontType:(NSString *) fontName;
-(void) changeFontSize:(int) fontSize;
-(void) justifyLeft;
-(void) justifyCenter;
-(void) justifyRight;
@end
