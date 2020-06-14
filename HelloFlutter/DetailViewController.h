//
//  DetailViewController.h
//  HelloFlutter
//
//  Created by smart on 2020/6/13.
//  Copyright © 2020 smart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

