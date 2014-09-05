//
//  HWViewController.h
//  Homework1
//
//  Created by Marc Baselga on 03/09/13.
//  Copyright (c) 2013 Marc Baselga  Garriga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *word1InputTextField;
@property (strong, nonatomic) IBOutlet UITextField *word2InputTextField;
@property (strong, nonatomic) IBOutlet UILabel *compoundWLabel;
@property (strong, nonatomic) IBOutlet UITextField *fullWordInpuntTextField;
@property (strong, nonatomic) IBOutlet UILabel *word1OutputLabel;


@property (strong, nonatomic) IBOutlet UILabel *word2OutputLabel;

- (IBAction)combineButton:(id)sender;
- (IBAction)splitButton:(id)sender;

@end
