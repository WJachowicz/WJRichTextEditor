//
//  WJFontSizeViewController.h
//  WJRichTextEditor
//
//  Created by Wojciech Jachowicz on 26.03.2013.
//  Copyright (c) 2013 Wojciech Jachowicz. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol WJFontSizeViewControllerDelegate
-(void) didSelectFontSize:(int) fontSize;
@end
@interface WJFontSizeViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property(nonatomic, assign) id<WJFontSizeViewControllerDelegate> delegate;

@end
