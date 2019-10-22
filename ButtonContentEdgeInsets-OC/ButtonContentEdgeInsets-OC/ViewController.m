//
//  ViewController.m
//  ButtonContentEdgeInsets-OC
//
//  Created by 嘴爷 on 2019/10/21.
//  Copyright © 2019 嘴爷. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+PlaceContent.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *imageLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *imageRightButton;
@property (weak, nonatomic) IBOutlet UIButton *imageTopButton;
@property (weak, nonatomic) IBOutlet UIButton *imageBottomButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    CGFloat space = 10.0f;
    [self.imageLeftButton placeImageTitlePosition:(ZYButtonImagePositionLeft) space:space];
    [self.imageRightButton placeImageTitlePosition:(ZYButtonImagePositionRight) space:space];
    [self.imageTopButton placeImageTitlePosition:(ZYButtonImagePositionTop) space:space];
    [self.imageBottomButton placeImageTitlePosition:(ZYButtonImagePositionBottom) space:space];
}


@end
