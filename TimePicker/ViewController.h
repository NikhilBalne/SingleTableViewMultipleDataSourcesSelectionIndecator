//
//  ViewController.h
//  TimePicker
//
//  Created by ihub on 16/11/18.
//  Copyright © 2018 ecoihub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

- (IBAction)maleBtn:(id)sender;
- (IBAction)femaleBtn:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tablevieww;

@property (strong, nonatomic) NSArray *maleNames,*femaleNames;

@property (weak, nonatomic) IBOutlet UIView *maleView;
@property (weak, nonatomic) IBOutlet UIView *femaleView;

@end

