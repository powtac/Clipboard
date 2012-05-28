//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Simon Brüchner on 28.05.12.
//  Copyright (c) 2012 Simon Brüchner Webdesign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end
