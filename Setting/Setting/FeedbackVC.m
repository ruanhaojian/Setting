//
//  FeedbackVC.m
//  Setting
//
//  Created by ruanhaojian on 16/5/28.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "FeedbackVC.h"

@interface FeedbackVC()

@property (weak, nonatomic) IBOutlet UITextView *opinionTextView;
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;


@end

@implementation FeedbackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
    
}

- (void)initUI{
    
    self.opinionTextView.layer.borderWidth = 1.0f;
    self.opinionTextView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.opinionTextView.layer.cornerRadius = 4.0f;
    
}

@end
