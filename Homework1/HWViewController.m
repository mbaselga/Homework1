//
//  HWViewController.m
//  Homework1
//
//  Created by Marc Baselga on 03/09/13.
//  Copyright (c) 2013 Marc Baselga  Garriga. All rights reserved.
//

#import "HWViewController.h"

@interface HWViewController ()
@property(strong,nonatomic)  NSMutableDictionary * dicOfWords;

@end

@implementation HWViewController

- (void)viewDidLoad
{
  self.dicOfWords = [NSMutableDictionary dictionary];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)combineButton:(id)sender {
    
    if(([self.word1InputTextField.text isEqualToString:@""])||([self.word2InputTextField.text isEqualToString:@""]))
    {
        self.compoundWLabel.textColor = [UIColor redColor];
        self.compoundWLabel.text =@"Empty string entered. Try again!";
         NSLog(@"it was here");

    }
    else{
    
    
    self.compoundWLabel.textColor = [UIColor blackColor];
    NSArray*wordsCombined = @[self.word1InputTextField.text, self.word2InputTextField.text];
    NSString*compoundWord =[wordsCombined componentsJoinedByString:@""];
    self.compoundWLabel.text = compoundWord;
    
    [self.dicOfWords setObject:wordsCombined forKey:compoundWord];
   
    
     //NSLog(@"compoundWord: %@", compoundWord);
    NSLog(@"dictionary: %@", self.dicOfWords);
    }
    
    
    
}

- (IBAction)splitButton:(id)sender {
    NSArray *words = [self.dicOfWords objectForKey: self.fullWordInpuntTextField.text];
    NSString*one = @"Word 1: ";
     NSString*two = @"Word 2: ";
    
    NSString*word1 = [words objectAtIndex:0];
    NSString*word2 = [words objectAtIndex:1];
    
    if(word1==NULL&&word2 ==NULL){
        NSString*errorMessage = @"The word was not found. ";
         NSString*errorMessage2 = @"Please check the spelling";
        self.word1OutputLabel.textColor = [UIColor redColor];
        self.word1OutputLabel.text =  errorMessage;
        self.word2OutputLabel.textColor = [UIColor redColor];
        self.word2OutputLabel.text =  errorMessage2;
       
        
    }
    else{
        self.word1OutputLabel.textColor = [UIColor blackColor];
        self.word2OutputLabel.textColor = [UIColor blackColor];
        one = [one stringByAppendingString:word1];
        two = [two stringByAppendingString:word2];
    
    self.word1OutputLabel.text = one;
    self.word2OutputLabel.text = two;
    NSLog(@"word1: %@", [words objectAtIndex:0]);
    }
    
}
@end
