//
//  ViewController.m
//  BasketNew
//
//  Created by Kozlova Vitaliya on 24.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "ViewController.h"
#import "Fruit.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    AppDelegate * appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.basket = appdelegate.basket;
    tableData = [[NSMutableArray alloc] init];
    BasketIterator* iter = [[BasketIterator alloc]init:self.basket.fruites];
    while([iter hasNext])
        [tableData addObject:[iter next]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView: (UITableView *) tableView
 numberOfRowsInSection: (NSInteger) section
{
    return [tableData count];
}
- (UITableViewCell *)tableView: (UITableView *) tableView
         cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
    static NSString *identifier = @"TableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: identifier];
    }
    Fruit* f = [tableData objectAtIndex: indexPath.row];
    cell.textLabel.text = f.type;
    return cell;
}
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    Fruit* f = [tableData objectAtIndex: indexPath.row];
    NSString* message = [NSString stringWithFormat:@"Name -> %@\nColor -> %@", f.name, f.color];
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle: f.type message: message delegate: nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [messageAlert show];
}
@end
