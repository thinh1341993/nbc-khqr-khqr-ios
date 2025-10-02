//
//  Constants.m
//  BakongKHQR
//
//  Created by Seth Sambo on 12/16/20.
//

#import "Constants.h"
#import "KHQRException.h"
#import "ValueLengthConstants.h"

static NSString * version = @"01";
static NSString * staticQR = @"11";
static NSString * dynamicQR = @"12";
static NSString * defaultMerchantCategoryCode = @"5999";
static NSString * defaultCountryCode = @"KH";
static NSString * defaultCity = @"Phnom Penh";
static NSUInteger accountIdLimitLength = 32;
static CurrencyType defaultCurrency = Khr;
static NSTimeInterval timeoutInterval = 45;

@implementation Constants

+ (Constants *)shared {
    static Constants *constants = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        constants = [[self alloc] init];
    });
    return constants;
}

+(NSString *) version {
    return version;
}

+(NSString *) staticQR {
    return staticQR;
}

+(NSString *) dynamicQR {
    return dynamicQR;
}

+(NSString *) defaultMerchantCategoryCode {
    return defaultMerchantCategoryCode;
}

+(NSString *) defaultCountryCode {
    return defaultCountryCode;
}

+(NSString *) defaultCity {
    return defaultCity;
}

+(NSUInteger) accountIdLimitLength {
    return accountIdLimitLength;
}

+(CurrencyType) defaultCurrency {
    return defaultCurrency;
}

+(NSArray *) requiredTags {
    return @[@"00", @"29", @"30", @"52", @"53", @"58", @"59", @"60"];
}

+(NSTimeInterval)timeoutInterval {
    return timeoutInterval;
}

+(NSString *)trimWhiteSpace: (NSString *)stringVal {
    return [stringVal stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(BOOL) checkEmptyOrNullException: (NSString *)stringVal
                           reason: (KHQRExceptionReasons) cReason{
    if (IsEmpty(stringVal)) {
        
        // set account id null or empty exception as default
        KHQRExceptionReasons reason = 0;
        NSNumber * errorCode = NULL;
        
        switch (cReason) {
            case accountIdRequired:
                reason = accountIdRequired;
                errorCode = [ErrorConstants accountIdRequiredCode];
                break;
                
            case formatIndicatorRequired:
                reason = formatIndicatorRequired;
                errorCode = [ErrorConstants formatIndicatorRequiredCode];
                break;
                
            case crcRequired:
                reason = crcRequired;
                errorCode = [ErrorConstants crcRequiredCode];
                break;
                
            case merchantCategoryCodeRequired:
                reason = merchantCategoryCodeRequired;
                errorCode = [ErrorConstants merchantCategoryCodeRequiredCode];
                break;
                
            case countryCodeRequired:
                reason = countryCodeRequired;
                errorCode = [ErrorConstants countryCodeRequiredCode];
                break;
                
            case merchantCityRequired:
                reason = merchantCityRequired;
                errorCode = [ErrorConstants merchantCityRequiredCode];
                break;
                
            case currencyTypeRequired:
                reason = currencyTypeRequired;
                errorCode = [ErrorConstants currencyTypeRequiredCode];
                break;
                
            case merchantNameRequired:
                reason = merchantNameRequired;
                errorCode = [ErrorConstants merchantNameRequiredCode];
                break;
                
            case merchantTypeRequired:
                reason = merchantTypeRequired;
                errorCode = [ErrorConstants merchantTypeRequiredCode];
                break;
                
            case merchantIdrequired:
                reason = merchantIdrequired;
                errorCode = [ErrorConstants merchantIdRequiredCode];
                break;
                
            case acquiringBankRequired:
                reason = acquiringBankRequired;
                errorCode = [ErrorConstants acquiringBankRequiredCode];
                break;
                
            default:
                break;
        }
        
        KHQRException * exception = [[KHQRException alloc] initWithReason: reason
                                                                errorCode: errorCode];
        [exception raise];
    }
    return TRUE;
}

+(BOOL) checkLengthException: (NSString *)stringVal
                      reason: (KHQRExceptionReasons) cReason {
    
    KHQRExceptionReasons reason = 0;
    NSNumber * errorCode = NULL;
    
    short length = [Constants trimWhiteSpace: stringVal].length;
    
    if (cReason == accountIdLengthInvalid && length > MERCHANT_ACCOUNT_ID_LENGTH) {
        reason = accountIdLengthInvalid;
        errorCode = [ErrorConstants accountIdLengthInvalidCode];
    }
    else if (cReason == formatIndicatorLengthInvalid && length !=  FORMAT_INDICATOR_LENGTH) {
        reason = formatIndicatorLengthInvalid;
        errorCode = [ErrorConstants formatIndicatorLengthInvalidCode];
    }
    else if (cReason == pointOfInitializeLengthInvalid && length != POINT_OF_INITIALIZE_LENGTH) {
        reason = pointOfInitializeLengthInvalid;
        errorCode = [ErrorConstants pointOfInitializeLengthInvalidCode];
    }
    else if (cReason == merchantCategoryCodeLengthInvalid && length != MERCHANT_CATEGORY_CODE_LENGTH) {
        reason = merchantCategoryCodeLengthInvalid;
        errorCode = [ErrorConstants merchantCategoryCodeLengthInvalidCode];
    }
    else if (cReason == transactionCurrencyLengthInvalid && length != TRANSACTION_CURRENCY_LENGTH) {
        reason = transactionCurrencyLengthInvalid;
        errorCode = [ErrorConstants transactionCurrencyLengthInvalidCode];
    }
    else if (cReason == countryCodeLengthInvalid && length != COUNTRY_CODE_LENGTH) {
        reason = countryCodeLengthInvalid;
        errorCode = [ErrorConstants countryCodeLengthInvalidCode];
    }
    else if (cReason == merchantCityLengthInvalid && length > MERCHANT_CITY_LENGTH) {
        reason = merchantCityLengthInvalid;
        errorCode = [ErrorConstants merchantCityLengthInvalidCode];
    }
    else if (cReason == crcLengthInvalid && length != CRC_LENGTH) {
        reason = crcLengthInvalid;
        errorCode = [ErrorConstants crcLengthInvalidCode];
    }
    else if (cReason == merchantNameLengthInvalid && length > MERCHANT_NAME_LENGTH) {
        reason = merchantNameLengthInvalid;
        errorCode = [ErrorConstants merchantNameLengthInvalidCode];
    }
    else if (cReason == tranAmountInvalid && length > TRANSACTION_AMOUNT_LENGTH) {
        reason = tranAmountInvalid;
        errorCode = [ErrorConstants tranAmountInvalidCode];
    }
    else if (cReason == billNumberLengthInvalid && length > BILL_NUMBER_LENGTH) {
        reason = billNumberLengthInvalid;
        errorCode = [ErrorConstants billNumberLengthInvalidCode];
    }
    else if (cReason == storeLabelLengthInvalid && length > STORE_LABEL_LENGTH) {
        reason = storeLabelLengthInvalid;
        errorCode = [ErrorConstants storeLabelLengthInvalidCode];
    }
    else if (cReason == terminalLabelLengthInvalid && length > TERMINAL_LABEL_LENGTH) {
        reason = terminalLabelLengthInvalid;
        errorCode = [ErrorConstants terminalLabelLengthInvalidCode];
    }
    else if (cReason == merchantIdLengthInvalid && length > MERCHANT_ID_LENGTH) {
        reason = merchantIdLengthInvalid;
        errorCode = [ErrorConstants merchantIdLengthInvalidCode];
    }
    else if (cReason == accountInfoLengthInvalid && length > ACCOUNT_INFORMATION_LENGTH) {
        reason = accountInfoLengthInvalid;
        errorCode = [ErrorConstants accountInfoLengthInvalidCode];
    }
    else if (cReason == acquiringBankLengthInvalid && length > ACQUIRING_BANK_LENGTH) {
        reason = acquiringBankLengthInvalid;
        errorCode = [ErrorConstants acquiringBankLengthInvalidCode];
    }
    else if (cReason == mobileNumberLengthInvalid && length > MOBILE_NUMBER_LENGTH) {
        reason = mobileNumberLengthInvalid;
        errorCode = [ErrorConstants mobileNumberLengthInvalidCode];
    }
    
    if (reason && reason != 0) {
        KHQRException * exception = [[KHQRException alloc] initWithReason: reason
                                                                errorCode: errorCode];
        [exception raise];
    }
    
    return TRUE;
}

+(NSString *) replaceString: (NSString *)str withEmptyStringToIndex: (NSInteger)index {
    if (index > str.length) {
        // no throw exception when decoding
        if (Constants.shared.isDecoding) {
            return NULL;
        }
        KHQRException * invalidQRException = [[KHQRException alloc] initWithReason: qrInvalid
                                                                         errorCode: [ErrorConstants qrInvalidCode]];
        [invalidQRException raise];
    }
    return [str stringByReplacingCharactersInRange: NSMakeRange(0, index) withString: @""];
}


+(NSString *) subString: (NSString *)str toIndex: (NSInteger)index {
    if (index > str.length) {
        // no throw exception when decoding
        if (Constants.shared.isDecoding) {
            return NULL;
        }
        KHQRException * invalidQRException = [[KHQRException alloc] initWithReason: qrInvalid
                                                                         errorCode: [ErrorConstants qrInvalidCode]];
        [invalidQRException raise];
    }
    return [str substringToIndex: index];
}

@end
