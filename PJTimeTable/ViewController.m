//
//  ViewController.m
//  PJTimeTable
//
//  Created by Mac on 04/11/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.numberField.keyboardType = UIKeyboardTypeNumberPad;
    self.limitField.keyboardType = UIKeyboardTypeNumberPad;
    
    
    self.numberTableView.delegate = self;
    self.numberTableView.dataSource = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButton:(id)sender {
    NSString *numberString = self.numberField.text;
    NSString *limitString = self.limitField.text;
    
    if (numberString.length > 0 && limitString.length > 0) {
        
        int number = numberString.intValue;
        int limit = limitString.intValue;
        
        allValues = [[NSMutableArray alloc]init];
        
        for (int index = 1; index <= limit; index++) {
            
            NSString *text = [NSString stringWithFormat:@"%d    *   %d  =   %d",number,index,number*index];
            
            [allValues addObject:text];
        }
        
        [self.numberTableView reloadData];
        
        [self.view endEditing:YES];
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return allValues.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    NSString *result = [allValues objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = result;
    return cell;
}



@end
