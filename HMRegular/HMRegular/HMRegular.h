//
//  HMRegular.h
//  HMRegular
//
//  Created by aahazz on 16/3/23.
//  Copyright © 2016年 侯猛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMRegular : NSObject

/**
 *  用户名 (6-16位，数字、英文都可以，不包含特殊字符)
 */
+ (BOOL)validateStrWithUserName:(NSString *)userName;

/**
 *
 *  密码 (英文、数字必须都包含，且不包含特殊字符)
 *
 */
+ (BOOL)validateStrWithPassWord:(NSString *)passWord;

/**
 *  真实姓名验证
 * （只能是汉字且10个字内）
 */
+ (BOOL)validateRealName:(NSString *)name;

/**
 *  邮箱验证
 */
+ (BOOL)validateEmail:(NSString *)email;

/**
 *  手机号码验证
 */
+ (BOOL)validatePhone:(NSString *)phone;

/**
 *  身份证号码验证
 */
+ (BOOL)validateIDCardNumber:(NSString *)value;



@end
