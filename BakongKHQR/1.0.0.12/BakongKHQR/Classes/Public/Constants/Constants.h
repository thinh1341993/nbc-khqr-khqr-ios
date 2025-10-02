//
//  Constants.m
//  BakongKHQR
//
//  Created by Seth Sambo on 12/8/20.
//

#import <Foundation/Foundation.h>
#import "BakongKHQR.h"
#import "Enums.h"


@interface Constants: NSObject
+(NSString *) version;
+(NSString *) staticQR;
+(NSString *) dynamicQR;
+(NSString *) defaultMerchantCategoryCode;
+(NSString *) defaultCountryCode;
+(NSString *) defaultCity;
+(NSUInteger) accountIdLimitLength;
+(CurrencyType) defaultCurrency;
+(NSArray *) requiredTags;
+(NSTimeInterval)timeoutInterval;

@property (assign) BOOL isDecoding;
@property (assign) BOOL isGenerateIndividual;

+ (Constants *)shared;

+(NSString *) trimWhiteSpace: (NSString *)stringVal;
+(BOOL) checkEmptyOrNullException: (NSString *)stringVal
                           reason: (KHQRExceptionReasons) cReason;
+(BOOL) checkLengthException: (NSString *)stringVal
                      reason: (KHQRExceptionReasons) cReason;


+(NSString *) replaceString: (NSString *)str withEmptyStringToIndex: (NSInteger)index;
+(NSString *) subString: (NSString *)str toIndex: (NSInteger)index;

@end

static inline BOOL IsEmpty(id thing) {
    return thing == nil
    || ([thing respondsToSelector:@selector(length)]
        && [(NSData *)thing length] == 0)
    || ([thing respondsToSelector:@selector(count)]
        && [(NSArray *)thing count] == 0);
}
