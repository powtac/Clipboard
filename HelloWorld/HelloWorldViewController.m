//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Simon Brüchner on 28.05.12.
//  Copyright (c) 2012 Simon Brüchner Webdesign. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController
@synthesize userName = _userName;
@synthesize label;
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
    
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];

    
    greeting = pasteboard.string;
    self.label.text = greeting;
    
    // UIImage *image = pasteboard.image;
    // NSURL *url = pasteboard.URL;
    // UIColor *color = pasteboard.color;
    
    // pasteboard.string = @"paste me somewhere";
}
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES; 
}
@end
