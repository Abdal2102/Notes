//
//  DetailViewController.m
//  Notes
//
//  Created by Abd Al on 08/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import "DetailViewController.h"
#import "Data.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize texts;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [Data setCurrentKey:_detailItem];
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    NSString *currentNote = [[Data getAllNotes] objectForKey:[Data getCurrentKey]];
    
    if (![currentNote isEqualToString:keyDefaultText]) {
        self.texts.text = currentNote;
    }else{
        self.texts.text = @"";
    }
    [self.texts becomeFirstResponder];
}

-(void)viewWillDisappear:(BOOL)animated{
    if (![self.texts.text isEqualToString:@""]) {
        [Data setNoteForCurrentKey:self.texts.text];
    }else{
        [Data removeNoteForKey:[Data getCurrentKey]];
    }
    [Data saveNotes];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
