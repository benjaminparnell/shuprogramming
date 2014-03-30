//
//  ViewController.m
//  HelloWorld
//
//  Created by Curtis Baily on 26/03/2014.
//  Copyright (c) 2014 SHUP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize name;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    
    NSString *message;
    
    if (self.name.hasText) {
        message = [@"Hello " stringByAppendingString:self.name.text];
    } else {
        message = @"Hello World";
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" message:message delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    
    [alert show];
    
}
@end
