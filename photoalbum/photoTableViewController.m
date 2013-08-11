//
//  photoTableViewController.m
//  photoalbum
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import "photoTableViewController.h"

@interface photoTableViewController ()

@end


@implementation photoTableViewController

NSMutableArray *allPhotos;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    allPhotos = [[NSMutableArray alloc] init];
    
    Photo *pic = [[Photo alloc] init];
    [pic setName: @"A Cluttered Desk"];
    [pic setFile:@"aClutteredDesk.jpg"];
    [pic setNotes:@"If a cluttered desk is a sign of a cluttered mind, of what, then is an empty desk a sign?"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Bruce Lee Quotes"];
    [pic setFile:@"bruceLeeQuotes.jpg"];
    [pic setNotes:@"Bruce Lee"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"He Who Asks"];
    [pic setFile:@"heWhoAsks.jpg"];
    [pic setNotes:@"He Who Asks"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Once You Choose"];
    [pic setFile:@"onceYouChoose.jpg"];
    [pic setNotes:@"Once you choose hope, anything is possible"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Political Language"];
    [pic setFile:@"politicalLanguage.jpg"];
    [pic setNotes:@"Political Language"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Rise Above Yourself"];
    [pic setFile:@"riseAboveYourself.jpg"];
    [pic setNotes:@"You yourself are your own obstacle, rise above yourself"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"The Best Fighter"];
    [pic setFile:@"theBestFighter.png"];
    [pic setNotes:@"The best fighter is never angry"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"There's Gonna Be Times"];
    [pic setFile:@"theresGonnaBeTimes.jpg"];
    [pic setNotes:@"Tupac"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"U Have No Idea"];
    [pic setFile:@"uHaveNoIdea.jpg"];
    [pic setNotes:@"You have no idea what you're capable of until you try"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"We Don't Grow"];
    [pic setFile:@"weDontGrow.jpg"];
    [pic setNotes:@"We don't grow when things are easy; we grow when we face challenges"];
    [allPhotos addObject:pic];
    
    pic  = [[Photo alloc] init];
    [pic setName:@"When Things Fall Apart"];
    [pic setFile:@"whenThingsFall.jpg"];
    [pic setNotes:@"Sometimes when things are falling apart they may actually be falling into place"];
    [allPhotos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Your Walls"];
    [pic setFile:@"yourWalls.jpg"];
    [pic setNotes:@"You are confined only by the walls you build yourself"];
    [allPhotos addObject:pic];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    photoViewController *photoView = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    Photo *pV = [allPhotos objectAtIndex:path.row];
    [photoView setSelPhoto:pV];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [allPhotos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    Photo *sel = [allPhotos objectAtIndex:indexPath.row];
    
    [cell.textLabel setText:sel.name];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
