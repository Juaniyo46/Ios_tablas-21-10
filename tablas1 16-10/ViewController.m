//
//  ViewController.m
//  tablas1 16-10
//
//  Created by Juan Alvarez on 16/10/2019.
//  Copyright © 2019 Juan Alvarez. All rights reserved.
//

#import "ViewController.h"
#import "celda.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
        return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row % 2 != 0){
        
        NSString * labelCell = @"Soy una celda";
        NSString * cellId = @"mycell1";

        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];

        cell.backgroundColor = [UIColor colorWithRed:0.7 green:0 blue:0 alpha:0.5];

        UILabel *miLabel = (UILabel *) [self.view viewWithTag:103];
        miLabel.text = labelCell;

        return cell;
    }else {
        
        celda *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell2"];
        [cell.imagen setImage:[UIImage imageNamed:@"imagen"]];
        cell.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:0.3];
        
        return cell;
    }
    

    
    
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString * msg;
    
    if (indexPath.row % 2 != 0){
        
        msg = @"Soy una celda roja";
        
    } else {
        msg = @"Soy una celda azul";
    }
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Celda seleccionada" message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}



@end
