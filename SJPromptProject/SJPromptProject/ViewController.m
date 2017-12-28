//
//  ViewController.m
//  SJPromptProject
//
//  Created by BlueDancer on 2017/9/26.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "ViewController.h"
#import "SJPrompt.h"

@interface ViewController ()

@property (nonatomic, strong) SJPrompt *prompt;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.prompt = [SJPrompt promptWithPresentView:self.view];
    
    // update config
    self.prompt.update(^(SJPromptConfig * _Nonnull config) {
        config.font = [UIFont systemFontOfSize:12];
        config.backgroundColor = [UIColor orangeColor];
        config.insets = UIEdgeInsetsMake(8, 8, 8, 8);
        config.maxWidth = 200;
    });
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickedShow:(id)sender {
    [self.prompt showTitle:@"天行健, 君子以自强不息" duration:-1];
}


- (IBAction)clickedHidden:(id)sender {
    [self.prompt hidden];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
