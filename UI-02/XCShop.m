//
//  XCShop.m
//  UI-02
//
//  Created by liuxingchen on 16/9/5.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCShop.h"
#import "Shop.h"


@interface XCShop()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@end

@implementation XCShop
+(instancetype)shoploadXib
{
    //NSStringFromClass(self)把当前类名转成字符串
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
}
-(void)setShop:(Shop *)shop
{
    _shop = shop;
    self.imageView.image = [UIImage imageNamed:shop.icon];
    self.nameLabel.text = shop.name;
}
+(instancetype)shoploadXibWith:(Shop *)shop;
{
    XCShop *s = [self shoploadXib];
    s.shop = shop;
    return s;
}
@end
