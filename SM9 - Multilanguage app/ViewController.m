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
    
    [_informationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
    [_universityImage setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
}

- (IBAction)showInformation{
    UIAlertController *alertDialog= [
        UIAlertController alertControllerWithTitle :@"Information"
        message:[
            NSString stringWithFormat:NSLocalizedString(@"The faculty is running %i programs on graduate and undergraduate level.",nil)
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
