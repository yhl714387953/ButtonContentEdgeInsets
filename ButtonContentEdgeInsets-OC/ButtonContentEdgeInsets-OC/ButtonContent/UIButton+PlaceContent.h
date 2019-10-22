//
//  UIButton+PlaceContent.h
//  ButtonContentEdgeInsets-OC
//
//  Created by 嘴爷 on 2019/10/21.
//  Copyright © 2019 嘴爷. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ZYButtonImagePosition) {
    
    ZYButtonImagePositionLeft,
    ZYButtonImagePositionRight,
    ZYButtonImagePositionTop,
    ZYButtonImagePositionBottom
};

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (PlaceContent)

/**
 重新摆放按钮的image和label  注意调用时机，按钮的大小确定之后再去调用
 
 @param position 图片的位置
 @param space 图片和文字之间的距离
 */
-(void)placeImageTitlePosition:(ZYButtonImagePosition)position space:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
