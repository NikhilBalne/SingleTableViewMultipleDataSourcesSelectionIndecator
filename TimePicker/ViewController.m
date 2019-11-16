//
//  ViewController.m
//  TimePicker
//
//  Created by ihub on 16/11/18.
//  Copyright © 2018 ecoihub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL dataSourceIsActive;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.maleNames = [NSArray arrayWithObjects:@"Nikhil",@"Naresh",@"Charan",@"Phani",@"Sharath",@"Gopi", nil];
    
    self.femaleNames = [NSArray arrayWithObjects:@"Ganga",@"Yamuna",@"Durga",@"Godavari",@"Krishna", nil];
    
    dataSourceIsActive = true;
    self.femaleView.hidden = true;
}

- (IBAction)maleBtn:(id)sender {
    dataSourceIsActive = true;
    [self.tablevieww reloadData];
    self.maleView.hidden = false;
    self.femaleView.hidden = true;
}

- (IBAction)femaleBtn:(id)sender {
    dataSourceIsActive = false;
    [self.tablevieww reloadData];
    self.maleView.hidden = true;
    self.femaleView.hidden = false;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (dataSourceIsActive == true) {
        return self.maleNames.count;
    }else{
        return self.femaleNames.count;
    }
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (dataSourceIsActive == true) {
        cell.textLabel.text = [self.maleNames objectAtIndex:indexPath.row];
        
    }else{
        cell.textLabel.text = [self.femaleNames objectAtIndex:indexPath.row];
    }
    
    return cell;
}

@end
