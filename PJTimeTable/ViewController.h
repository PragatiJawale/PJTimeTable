//
//  ViewController.h
//  PJTimeTable
//
//  Created by Mac on 04/11/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *allValues;
}
@property (strong, nonatomic) IBOutlet UITextField *numberField;
@property (strong, nonatomic) IBOutlet UITextField *limitField;
@property (strong, nonatomic) IBOutlet UIButton *calculateButton;
- (IBAction)calculateButton:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *numberTableView;

@end

