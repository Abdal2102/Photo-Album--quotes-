//
//  notesViewController.h
//  photoalbum
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface notesViewController : UIViewController

@property (strong, nonatomic) IBOutlet Photo *selPhoto;
@property (weak, nonatomic) IBOutlet UILabel *detailNotes;
- (IBAction)back:(id)sender;


@end
