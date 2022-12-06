//
//  ViewController.m
//  SM9 - Multilanguage app
//
//  Created by Gracjan Ulianowski on 06/12/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_informationButton setTitle:@"Information" forState:UIControlStateNormal];
}

- (IBAction)showInformation{
    UIAlertController *alertDialog= [
        UIAlertController alertControllerWithTitle :@"Information"
        message:[
            NSString stringWithFormat:@"The faculty is running %i programs at graduate and undergraduate level.",4
        ]
        preferredStyle:UIAlertControllerStyleAlert
    ];
    UIAlertAction *defaultAction=[
        UIAlertAction actionWithTitle:@"OK"
        style:UIAlertActionStyleDefault
        handler:^(UIAlertAction *action){}
    ];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
}

@end
