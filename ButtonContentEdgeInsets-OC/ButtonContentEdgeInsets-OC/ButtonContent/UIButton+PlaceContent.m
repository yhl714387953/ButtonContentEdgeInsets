//
//  UIButton+PlaceContent.m
//  ButtonContentEdgeInsets-OC
//
//  Created by 嘴爷 on 2019/10/21.
//  Copyright © 2019 嘴爷. All rights reserved.
//

#import "UIButton+PlaceContent.h"

@implementation UIButton (PlaceContent)

-(void)placeImageTitlePosition:(ZYButtonImagePosition)position space:(CGFloat)space{

    //    获取按钮图片的宽高
    CGFloat imageWidth = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    
    //    获取文字的宽高
    CGSize labelSize = self.titleLabel.intrinsicContentSize;
    CGFloat labelWidth = labelSize.width;
    CGFloat labelHeight = labelSize.height;

#if DEBUG
    NSLog(@"按钮图片 width: %f  height: %f \n", imageWidth, imageHeight);
    NSLog(@"按钮文字 width: %f  height: %f \n", labelWidth, labelHeight);
    NSLog(@"按钮大小 width: %f  height: %f \n", self.frame.size.width, self.frame.size.height);
    
#endif
    
    //按钮图片文字的位置 EdgeInsets 都是相对原来的位置变化  类似于CSS 里的padding 往内侧方向是正
    CGFloat titleTop, titleLeft, titleBottom, titleRight;
    CGFloat imageTop, imageLeft, imageBottom, imageRight;
    
    switch (position) {
            case ZYButtonImagePositionLeft:
            //    图片在左、文字在右;
            imageTop = 0;
            imageBottom = 0;
            imageLeft =  -space / 2.0;
            imageRight = space / 2.0;
            
            titleTop = 0;
            titleBottom = 0;
            titleLeft = space / 2;
            titleRight = -space / 2;
            break;
            
            case ZYButtonImagePositionTop://    图片在上，文字在下
            imageTop = -(labelHeight / 2.0 + space / 2.0);//图片上移半个label高度和半个space高度  给label使用
            imageBottom = (labelHeight / 2.0 + space / 2.0);
            imageLeft = labelWidth / 2.0;
            imageRight = -labelWidth / 2.0f;
            
            titleLeft = -imageWidth / 2.0;
            titleRight = imageWidth / 2.0;
            titleTop = imageHeight / 2.0 + space / 2.0;//文字下移半个image高度和半个space高度
            titleBottom = -(imageHeight / 2.0 + space / 2.0);
            break;
            
            case ZYButtonImagePositionRight://    图片在右，文字在左
            imageTop = 0;
            imageBottom = 0;
            imageRight = -(labelWidth + space / 2.0);
            imageLeft = labelWidth + space / 2.0;
            
            titleTop = 0;
            titleLeft = -(imageWidth + space / 2.0);
            titleBottom = 0;
            titleRight = imageWidth + space / 2.0;
            break;
            
            case ZYButtonImagePositionBottom://    图片在下，文字在上
            imageLeft = (imageWidth + labelWidth) / 2.0 - imageWidth / 2.0;
            imageRight = -labelWidth / 2.0;
            imageBottom = -(labelHeight / 2.0 + space / 2.0);
            imageTop = labelHeight / 2.0 + space / 2.0;//图片下移半个label高度和半个space高度  给label使用
            
            titleTop = -(imageHeight / 2.0 + space / 2.0);
            titleBottom = imageHeight / 2.0 + space / 2.0;
            titleLeft = -imageWidth / 2.0;
            titleRight = imageWidth / 2.0;
            break;
        default:
            break;
    }
    
    self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft, imageBottom, imageRight);
    self.titleEdgeInsets = UIEdgeInsetsMake(titleTop, titleLeft, titleBottom, titleRight);
    
}

@end
