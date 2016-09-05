//
//  XCShop.h
//  UI-02
//
//  Created by liuxingchen on 16/9/5.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Shop;

@interface XCShop : UIView
/** 商品模型 */
@property(nonatomic,strong)Shop * shop ;
+(instancetype)shoploadXib;
+(instancetype)shoploadXibWith:(Shop *)shop;
@end
