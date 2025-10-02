//
//  ErrorConstants.m
//  BakongKHQR
//
//  Created by Seth Sambo on 12/22/20.
//

#import "ErrorConstants.h"

static short ACCOUNT_ID_REQUIRED_CODE = 1;
static NSString * ACCOUNT_ID_REQUIRED_MESSAGE = @"Bakong Account ID cannot be null or empty";


static short MERCHANT_NAME_REQUIRED_CODE = 2;
static NSString * MERCHANT_NAME__REQUIRED_MESSAGE = @"Merchant name cannot be null or empty";

static short ACCOUNT_ID_INVALID_CODE = 3;
static NSString * ACCOUNT_ID_INVALID_MESSAGE = @"Bakong Account ID is invalid";

static short TRAN_AMOUNT_INVALID_CODE = 4;
static NSString * TRAN_AMOUNT_INVALID_MESSAGE = @"Amount is invalid";

static short MERCHANT_TYPE_REQUIRED_CODE = 5;
static NSString * MERCHANT_TYPE_REQUIRED_MESSAGE = @"Merchant type cannot be null or empty";

static short ACCOUNT_ID_LENGTH_INVALID_CODE = 6;
static NSString * ACCOUNT_ID_LENGTH_INVALID_MESSAGE = @"Bakong Account ID length is invalid";

static short MERCHANT_NAME_LENGTH_INVALID_CODE = 7;
static NSString * MERCHANT_NAME_LENGTH_INVALID_MESSAGE = @"Merchant name length is invalid";

static short QR_INVALID_CODE = 8;
static NSString * QR_INVALID_MESSAGE = @"KHQR provided is invalid";

static short CURRENCY_TYPE_REQUIRED_CODE = 9;
static NSString * CURRENCY_TYPE_REQUIRED_MESSAGE = @"Currency type cannot be null or empty";

static short BILL_NUMBER_LENGTH_INVALID_CODE = 10;
static NSString * BILL_NUMBER_LENGTH_INVALID_MESSAGE = @"Bill number length is invalid";

static short STORE_LABEL_LENGTH_INVALID_CODE = 11;
static NSString * STORE_LABEL_LENGTH_INVALID_MESSAGE = @"Store label length is invalid";

static short TERMINAL_LABEL_LENGTH_INVALID_CODE = 12;
static NSString * TERMINAL_LABEL_LENGTH_INVALID_MESSAGE = @"Terminal label length is invalid";

static short CONNECTION_TIMEOUT_ERROR_CODE = 13;
static NSString * CONNECTION_TIMEOUT_ERROR_MESSAGE = @"Connection time out";

static short INVALID_DEEP_SOURCE_INFO_ERROR_CODE = 14;
static NSString * INVALID_DEEP_SOURCE_INFO_ERROR_MESSAGE = @"Invalid deep link source info";

static short INTERNAL_SERVER_ERROR_CODE = 15;
static NSString * INTERNAL_SERVER_ERROR_MESSAGE = @"Internal server error";

static short FORMAT_INDICATOR_LENGTH_INVALID_CODE = 16;
static NSString * FORMAT_INDICATOR_LENGTH_INVALID_MESSAGE = @"Payload Format Indicator Length is invalid";

static short POINT_OF_INITIALIZE_INVALID_CODE = 17;
static NSString * POINT_OF_INITIALIZE_INVALID_MESSAGE = @"Point of Initiation Length is invalid";

static short MERCHANT_CATEGORY_CODE_LENGTH_INVALID_CODE = 18;
static NSString * MERCHANT_CATEGORY_CODE_LENGTH_INVALID_MESSAGE = @"Merchant Category Length is invalid";

static short TRANSACTION_CURRENCY_LENGTH_INVALID_CODE = 19;
static NSString * TRANSACTION_CURRENCY_LENGTH_INVALID_MESSAGE = @"Transaction Currency Length is invalid";

static short COUNTRY_CODE_LENGTH_INVALID_CODE = 20;
static NSString * COUNTRY_CODE_LENGTH_INVALID_MESSAGE = @"Country Code Length is invalid";

static short MERCHANT_CITY_LENGTH_INVALID_CODE = 21;
static NSString * MERCHANT_CITY_LENGTH_INVALID_MESSAGE = @"Merchant City Length is invalid";

static short CRC_LENGTH_INVALID_CODE = 22;
static NSString * CRC_LENGTH_INVALID_MESSAGE = @"CRC Length is invalid";

static short FORMAT_INDICATOR_REQUIRED_CODE = 23;
static NSString * FORMAT_INDICATOR_REQUIRED_MESSAGE = @"Payload Format Indicator cannot be null or empty";

static short CRC_REQUIRED_CODE = 24;
static NSString * CRC_REQUIRED_MESSAGE = @"CRC cannot be null or empty";

static short MERCHANT_CATEGORY_CODE_REQUIRED_CODE = 25;
static NSString * MERCHANT_CATEGORY_CODE_REQUIRED_MESSAGE = @"Merchant Category cannot be null or empty";

static short COUNTRY_CODE_REQUIRED_CODE = 26;
static NSString * COUNTRY_CODE_REQUIRED_MESSAGE = @"Country Code cannot be null or empty";

static short MERCHANT_CITY_REQUIRED_CODE = 27;
static NSString * MERCHANT_CITY_REQUIRED_MESSAGE = @"Merchant City cannot be null or empty";

static short UNSUPPORTED_TRANSACTION_CURRENCY_CODE = 28;
static NSString * UNSUPPORTED_TRANSACTION_CURRENCY_MESSAGE = @"Unsupported currency";

static short INVALID_DEEP_LINK_URL_CODE = 29;
static NSString * INVALID_DEEP_LINK_URL_MESSAGE = @"Invalid deeplink URL";

static short MERCHANT_ID_REQUIRED_CODE = 30;
static NSString * MERCHANT_ID_REQUIRED_MESSAGE = @"Merchant ID cannot be null or empty";

static short ACQUIRING_BANK_REQUIRED_CODE = 31;
static NSString * ACQUIRING_BANK_REQUIRED_MESSAGE = @"Acquiring bank cannot be null or empty";

static short MERCHANT_ID_LENGTH_INVALID_CODE = 32;
static NSString * MERCHANT_ID_LENGTH_INVALID_MESSAGE = @"Merchant ID length is invalid";

static short ACQUIRING_BANK_LENGTH_INVALID_CODE = 33;
static NSString * ACQUIRING_BANK_LENGTH_INVALID_MESSAGE = @"Acquiring bank length is invalid";

static short MOBILE_NUMBER_LENGTH_INVALID_CODE = 34;
static NSString * MOBILE_NUMBER_LENGTH_INVALID_MESSAGE = @"Mobile number length is invalid";

static short TAG_NOT_IN_ORDER_CODE = 35;
static NSString * TAG_NOT_IN_ORDER_MESSAGE = @"Tag is not in order";

static short ACCOUNT_INFO_LENGTH_INVALID_CODE = 36;
static NSString * ACCOUNT_INFO_LENGTH_INVALID_MESSAGE = @"Account information length is invalid";

static short TAG_DUPLICATED_CODE = 37;
static NSString * TAG_DUPLICATED_MESSAGE = @"Tag %@ is duplicated.";

@implementation ErrorConstants

+(NSNumber *) accountIdRequiredCode{
    return [NSNumber numberWithInt: ACCOUNT_ID_REQUIRED_CODE] ;
}
+(NSString *) accountIdRequiredMessage{
    return ACCOUNT_ID_REQUIRED_MESSAGE;
}


+(NSNumber *) merchantNameRequiredCode{
    return [NSNumber numberWithInt: MERCHANT_NAME_REQUIRED_CODE] ;
}
+(NSString *) merchantNameRequiredMessage{
    return MERCHANT_NAME__REQUIRED_MESSAGE;
}


+(NSNumber *) accountIdInvalidCode{
    return [NSNumber numberWithInt: ACCOUNT_ID_INVALID_CODE] ;
}
+(NSString *) accountIdInvalidMessage{
    return ACCOUNT_ID_INVALID_MESSAGE;
}

+(NSNumber *) tranAmountInvalidCode{
    return [NSNumber numberWithInt: TRAN_AMOUNT_INVALID_CODE] ;
}
+(NSString *) tranAmountInvalidMessage{
    return TRAN_AMOUNT_INVALID_MESSAGE;
}

+(NSNumber *) merchantTypeRequiredCode{
    return [NSNumber numberWithInt: MERCHANT_TYPE_REQUIRED_CODE] ;
}
+(NSString *) merchantTypeRequiredMessage{
    return MERCHANT_TYPE_REQUIRED_MESSAGE;
}


+(NSNumber *) accountIdLengthInvalidCode{
    return [NSNumber numberWithInt: ACCOUNT_ID_LENGTH_INVALID_CODE] ;
}
+(NSString *) accountIdLengthInvalidMessage{
    return ACCOUNT_ID_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) merchantNameLengthInvalidCode{
    return [NSNumber numberWithInt: MERCHANT_NAME_LENGTH_INVALID_CODE] ;
}
+(NSString *) merchantNameLengthInvalidMessage{
    return MERCHANT_NAME_LENGTH_INVALID_MESSAGE;
}


+(NSNumber *) qrInvalidCode{
    return [NSNumber numberWithInt: QR_INVALID_CODE] ;
}
+(NSString *) qrInvalidMessage{
    return QR_INVALID_MESSAGE;
}

+(NSNumber *) currencyTypeRequiredCode{
    return [NSNumber numberWithInt: CURRENCY_TYPE_REQUIRED_CODE] ;
}
+(NSString *) currencyTypeRequiredMessage{
    return CURRENCY_TYPE_REQUIRED_MESSAGE;
}

+(NSNumber *) billNumberLengthInvalidCode {
    return [NSNumber numberWithInt: BILL_NUMBER_LENGTH_INVALID_CODE];
}
+(NSString *) billNumberLengthInvalidMessage {
    return BILL_NUMBER_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) storeLabelLengthInvalidCode {
    return  [NSNumber numberWithInt: STORE_LABEL_LENGTH_INVALID_CODE];
}
+(NSString *) storeLabelLengthInvalidMessage {
    return STORE_LABEL_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) terminalLabelLengthInvalidCode {
    return [NSNumber numberWithInt: TERMINAL_LABEL_LENGTH_INVALID_CODE];
}
+(NSString *) terminalLabelLengthInvalidMessage {
    return TERMINAL_LABEL_LENGTH_INVALID_MESSAGE;
}


+(NSNumber *) connectionTimeoutErrorCode {
    return [NSNumber numberWithInt: CONNECTION_TIMEOUT_ERROR_CODE];
}
+(NSString *) connectionTimeoutErrorMessage {
    return CONNECTION_TIMEOUT_ERROR_MESSAGE;
}

+(NSNumber *) invalidDeepSourceInfoErrorCode {
    return [NSNumber numberWithInt: INVALID_DEEP_SOURCE_INFO_ERROR_CODE];
}
+(NSString *) invalidDeepSourceInfoErrorMessage {
    return INVALID_DEEP_SOURCE_INFO_ERROR_MESSAGE;
}

+(NSNumber *) internalServerErrorCode {
    return [NSNumber numberWithInt: INTERNAL_SERVER_ERROR_CODE];
}
+(NSString *) internalServerErrorMessage {
    return INTERNAL_SERVER_ERROR_MESSAGE;
}

+(NSNumber *) formatIndicatorLengthInvalidCode {
    return [NSNumber numberWithInt: FORMAT_INDICATOR_LENGTH_INVALID_CODE];
}
+(NSString *) formatIndicatorLengthInvalidMessage {
    return FORMAT_INDICATOR_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) pointOfInitializeLengthInvalidCode {
    return [NSNumber numberWithInt: POINT_OF_INITIALIZE_INVALID_CODE];
}
+(NSString *) pointOfInitializeLengthInvalidMessage {
    return POINT_OF_INITIALIZE_INVALID_MESSAGE;
}

+(NSNumber *) merchantCategoryCodeLengthInvalidCode {
    return [NSNumber numberWithInt: MERCHANT_CATEGORY_CODE_LENGTH_INVALID_CODE];
}
+(NSString *) merchantCategoryCodeLengthInvalidMessage {
    return MERCHANT_CATEGORY_CODE_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) transactionCurrencyLengthInvalidCode {
    return [NSNumber numberWithInt: TRANSACTION_CURRENCY_LENGTH_INVALID_CODE];
}
+(NSString *) transactionCurrencyLengthInvalidMessage {
    return TRANSACTION_CURRENCY_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) countryCodeLengthInvalidCode {
    return [NSNumber numberWithInt: COUNTRY_CODE_LENGTH_INVALID_CODE];
}
+(NSString *) countryCodeLengthInvalidMessage {
    return COUNTRY_CODE_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) merchantCityLengthInvalidCode {
    return [NSNumber numberWithInt: MERCHANT_CITY_LENGTH_INVALID_CODE];
}
+(NSString *) merchantCityLengthInvalidMessage {
    return MERCHANT_CITY_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) crcLengthInvalidCode {
    return [NSNumber numberWithInt: CRC_LENGTH_INVALID_CODE];
}
+(NSString *) crcLengthInvalidMessage {
    return CRC_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) formatIndicatorRequiredCode {
    return [NSNumber numberWithInt: FORMAT_INDICATOR_REQUIRED_CODE];
}
+(NSString *) formatIndicatorRequiredMessage {
    return FORMAT_INDICATOR_REQUIRED_MESSAGE;
}

+(NSNumber *) crcRequiredCode {
    return [NSNumber numberWithInt: CRC_REQUIRED_CODE];
}
+(NSString *) crcRequiredMessage {
    return CRC_REQUIRED_MESSAGE;
}

+(NSNumber *) merchantCategoryCodeRequiredCode {
    return [NSNumber numberWithInt: MERCHANT_CATEGORY_CODE_REQUIRED_CODE];
}
+(NSString *) merchantCategoryCodeRequiredMessage {
    return MERCHANT_CATEGORY_CODE_REQUIRED_MESSAGE;
}

+(NSNumber *) countryCodeRequiredCode {
    return [NSNumber numberWithInt: COUNTRY_CODE_REQUIRED_CODE];
}
+(NSString *) countryCodeRequiredMessage {
    return COUNTRY_CODE_REQUIRED_MESSAGE;
}

+(NSNumber *) merchantCityRequiredCode {
    return [NSNumber numberWithInt: MERCHANT_CITY_REQUIRED_CODE];
}
+(NSString *) merchantCityRequiredMessage {
    return MERCHANT_CITY_REQUIRED_MESSAGE;
}

+(NSNumber *) unsupportedTransactionCurrencyCode {
    return [NSNumber numberWithInt: UNSUPPORTED_TRANSACTION_CURRENCY_CODE];
}
+(NSString *) unsupportedTransactionCurrencyMessage {
    return UNSUPPORTED_TRANSACTION_CURRENCY_MESSAGE;
}

+(NSNumber *) invalidDeepLinkURLCode {
    return [NSNumber numberWithInt: INVALID_DEEP_LINK_URL_CODE];
}
+(NSString *) invalidDeepLinkURLMessage {
    return INVALID_DEEP_LINK_URL_MESSAGE;
}


+(NSNumber *) merchantIdRequiredCode {
    return [NSNumber numberWithInt: MERCHANT_ID_REQUIRED_CODE];
}
+(NSString *) merchantIdRequiredMessage {
    return MERCHANT_ID_REQUIRED_MESSAGE;
}

+(NSNumber *) acquiringBankRequiredCode {
    return [NSNumber numberWithInt: ACQUIRING_BANK_REQUIRED_CODE];
}
+(NSString *) acquiringBankRequiredMessage {
    return ACQUIRING_BANK_REQUIRED_MESSAGE;
}

+(NSNumber *) merchantIdLengthInvalidCode {
    return [NSNumber numberWithInt: MERCHANT_ID_LENGTH_INVALID_CODE];
}
+(NSString *) merchantIdLengthInvalidMessage {
    return MERCHANT_ID_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) acquiringBankLengthInvalidCode {
    return [NSNumber numberWithInt: ACQUIRING_BANK_LENGTH_INVALID_CODE];
}
+(NSString *) acquiringBankLengthInvalidMessage {
    return ACQUIRING_BANK_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) mobileNumberLengthInvalidCode {
    return [NSNumber numberWithInt: MOBILE_NUMBER_LENGTH_INVALID_CODE];
}
+(NSString *) mobileNumberLengthInvalidMessage {
    return MOBILE_NUMBER_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) tagNotInOrderCode {
    return [NSNumber numberWithInt: TAG_NOT_IN_ORDER_CODE];
}
+(NSString *) tagNotInOrderMessage {
    return TAG_NOT_IN_ORDER_MESSAGE;
}

+(NSNumber *) accountInfoLengthInvalidCode {
    return [NSNumber numberWithInt: ACCOUNT_INFO_LENGTH_INVALID_CODE];
}
+(NSString *) accountInfoLengthInvalidMessage {
    return ACCOUNT_INFO_LENGTH_INVALID_MESSAGE;
}

+(NSNumber *) TagDuplicatedCode {
    return [NSNumber numberWithInt: TAG_DUPLICATED_CODE];
}
+(NSString *) TagDuplicatedMessage {
    return TAG_DUPLICATED_MESSAGE;
}

@end
