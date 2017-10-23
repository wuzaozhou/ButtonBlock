//
//  UIButton+KKButton.h
//  ButtonBlock
//
//  Created by 吴灶洲 on 2017/10/21.
//  Copyright © 2017年 吴灶洲. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UIButton (KKButton)


- (void)addEventHandle:(void(^)(void))block forControlEVents:(UIControlEvents)controlEvents;
@end

