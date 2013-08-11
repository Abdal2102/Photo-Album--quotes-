//
//  photoViewController.h
//  photoalbum
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "notesViewController.h"


@interface photoViewController : UIViewController

@property (strong, nonatomic) IBOutlet Photo *selPhoto;

@property (weak, nonatomic) IBOutlet UIImageView *selImage;

@end
