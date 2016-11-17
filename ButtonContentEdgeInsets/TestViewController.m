//
//  TestViewController.m
//  ButtonContentEdgeInsets
//
//  Created by Pactera on 2016/11/16.
//  Copyright © 2016年 Pactera. All rights reserved.
//

#import "TestViewController.h"
#import "UIButton+PlaceContent.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UIButton *imageLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *imageRightButton;
@property (weak, nonatomic) IBOutlet UIButton *imageTopButton;
@property (weak, nonatomic) IBOutlet UIButton *imageBottomButton;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    [self.button setImageEdgeInsets:UIEdgeInsetsMake(-10, 20, 10, 20)];
    
    CGFloat space = 10.0f;
    [self.imageLeftButton placeImageTitlePosition:(ZYButtonImagePositionLeft) space:space];
    [self.imageRightButton placeImageTitlePosition:(ZYButtonImagePositionRight) space:space];
    [self.imageTopButton placeImageTitlePosition:(ZYButtonImagePositionTop) space:space];
    [self.imageBottomButton placeImageTitlePosition:(ZYButtonImagePositionBottom) space:space];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
