//
//  DetailViewController.h
//  Notes
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UITextView *texts;
@end
