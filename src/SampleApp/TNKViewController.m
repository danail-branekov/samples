//
//  TNKViewController.m
//  SampleApp
//
//  Created by Danail Branekov on 5/10/14.
//  Copyright (c) 2014 TENKOD. All rights reserved.
//

#import "TNKViewController.h"

@interface TNKViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property int cellCount;

@end

@implementation TNKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cellCount = 0;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellCount;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"ContentRow";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    NSInteger displayableIndex = indexPath.row + 1;
    UITextField *text1 = (UITextField*)[cell.contentView.subviews objectAtIndex:0];
    text1.text = [@"Text 1: " stringByAppendingString:[NSString stringWithFormat:@"%ld", displayableIndex]];
    UITextField *text2 = (UITextField*)[cell.contentView.subviews objectAtIndex:1];
    text2.text = [@"Text 2: " stringByAppendingString:[NSString stringWithFormat:@"%ld", displayableIndex]];
    UITextField *text3 = (UITextField*)[cell.contentView.subviews objectAtIndex:2];
    text3.text = [@"Text 3: " stringByAppendingString:[NSString stringWithFormat:@"%ld/%d", displayableIndex, self.cellCount]];
    
    return cell;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Created cells";
}

- (IBAction)onAddNewCell:(id)sender {
    self.cellCount++;
    [self.tableView reloadData];
}

@end
