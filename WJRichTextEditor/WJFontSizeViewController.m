//
//  WJFontSizeViewController.m
//  WJRichTextEditor
//
//  Created by Wojciech Jachowicz on 26.03.2013.
//  Copyright (c) 2013 Wojciech Jachowicz. All rights reserved.
//

#import "WJFontSizeViewController.h"

#define PICKER_WIDTH 100
#define PICKER_HEIGHT 120
@interface WJFontSizeViewController ()

@end

@implementation WJFontSizeViewController
@synthesize delegate=_delegate;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id) init{
    if (self=[super init]) {
        self.view.frame = CGRectMake(0, 0, PICKER_WIDTH, PICKER_HEIGHT);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIPickerView * picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, PICKER_WIDTH, PICKER_HEIGHT)];
    picker.delegate = self;
    picker.showsSelectionIndicator = YES;
    [self.view addSubview:picker];
    [picker release];
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString * value = [self pickerView:pickerView titleForRow:row forComponent:component];
    if ([_delegate respondsToSelector:@selector(didSelectFontSize:)]) {
        [_delegate didSelectFontSize:[value intValue]];
    }
    
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 7;
}
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%i",row+1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
