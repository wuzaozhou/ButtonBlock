//
//  UIButton+KKButton.m
//  ButtonBlock
//
//  Created by 吴灶洲 on 2017/10/21.
//  Copyright © 2017年 吴灶洲. All rights reserved.
//

#import "UIButton+KKButton.h"
#import <objc/runtime.h>

typedef void(^KKEventHandler)(void);

@interface UIButton()
@property (nonatomic, copy) KKEventHandler eventHandle;
@end

@implementation UIButton (KKButton)

/** 添加属性 */
static void *eventHandleKey = &eventHandleKey;

- (KKEventHandler)eventHandle {
    return objc_getAssociatedObject(self, &eventHandleKey);
}

- (void)setEventHandle:(KKEventHandler)eventHandle {
    objc_setAssociatedObject(self, &eventHandleKey, eventHandle, OBJC_ASSOCIATION_COPY);
}

- (void)addEventHandle:(void(^)(void))block forControlEVents:(UIControlEvents)controlEvents {
    self.eventHandle = block;
    [self addTarget:self action:@selector(onClicked) forControlEvents:controlEvents];
}

- (void)onClicked {
    self.eventHandle ? self.eventHandle() : nil;
}

@end


