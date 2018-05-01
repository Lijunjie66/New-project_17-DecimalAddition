//
//  main.m
//  New-project_17-DecimalAddition
//
//  Created by Geraint on 2018/4/27.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 使用NSDecimalNumber类创建两个NSDecimal数值
        NSDecimal dec1 = [[NSDecimalNumber decimalNumberWithString:@"1.534"] decimalValue];
        NSDecimal dec2 = [[NSDecimalNumber decimalNumberWithString:@"2.011"] decimalValue];
        
        // 声明计算结果和舍入结果的变量
        NSDecimal result;
        NSDecimal roundeResult;
        
        // 执行十进制数加法运算
        NSDecimalAdd(&result, &dec1, &dec2, NSRoundPlain);
        NSLog(@"Sum = %@", NSDecimalString(&result, nil));
        
        // 使用可用的舍入模式显示舍入结果
        NSDecimalRound(&roundeResult, &result, 2, NSRoundUp);
        NSLog(@"Sum (round up) = %@", NSDecimalString(&roundeResult, nil));
        NSDecimalRound(&roundeResult, &result, 2, NSRoundDown);
        NSLog(@"Sum (round down) = %@", NSDecimalString(&roundeResult, nil));
        NSDecimalRound(&roundeResult, &result, 2, NSRoundPlain);
        NSLog(@"Sum (round plain) = %@", NSDecimalString(&roundeResult, nil));
        NSDecimalRound(&roundeResult, &result, 2, NSRoundBankers);
        NSLog(@"Sum (round bankers) = %@", NSDecimalString(&roundeResult, nil));
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
