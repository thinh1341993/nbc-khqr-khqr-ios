//
//  KHQRDecodeData.m
//  BakongKHQR
//
//  Created by Seth Sambo on 2/15/21.
//

#import "KHQRDecodeData.h"

@interface KHQRDecodeData()

@end

@implementation KHQRDecodeData

#define LogVariable(x) NSLog(@"%s = %@",#x, x)
@synthesize payloadFormatIndicator;
@synthesize pointOfInitiationMethod;
@synthesize merchantType;
@synthesize bakongAccountID;
@synthesize merchantAccountId;
@synthesize accountInformation;
@synthesize acquiringBank;
@synthesize merchantCategoryCode;
@synthesize countryCode;
@synthesize merchantName;
@synthesize merchantCity;
@synthesize transactionCurrency;
@synthesize transactionAmount;
@synthesize billNumber;
@synthesize mobileNumber;
@synthesize storeLabel;
@synthesize terminalLabel;
@synthesize timestamp;
@synthesize crc;

-(id)initWithFormatIndicator: (NSString *)formatIndicator
           pointOfInitiation: (NSString *)pointOfInitiation
                      qrType: (NSString *)merchantType
             bakongAccountId: (NSString *)accountId
           merchantAccountId: (NSString *)merchantAccountId
           accountInformation: (NSString *)accountInfo
               acquiringBank: (NSString *)acquiringBank
        merchantCategoryCode: (NSString *)merchantCategoryCode
                 countryCode: (NSString *)countryCode
                merchantName: (NSString *)merchantName
                merchantCity: (NSString *)merchantCity
         transactionCurrency: (NSString *)transactionCurrency
            transactionAmout: (NSString *)transactionAmount
                  billNumber: (NSString *)billNumber
                mobileNumber: (NSString *)mobileNumber
                  storeLabel: (NSString *)storeLabel
               terminalLabel: (NSString *)terminalLabel
                   timestamp: (NSString *)timestamp
                         crc: (NSString *)crc {
    
    self = [super init];
    if (self) {
        self.payloadFormatIndicator = formatIndicator;
        self.pointOfInitiationMethod = pointOfInitiation;
        self.merchantType = merchantType;
        self.bakongAccountID = accountId;
        self.merchantAccountId = merchantAccountId;
        self.accountInformation = accountInfo;
        self.acquiringBank = acquiringBank;
        self.merchantCategoryCode = merchantCategoryCode;
        self.countryCode = countryCode;
        self.merchantName = merchantName;
        self.merchantCity = merchantCity;
        self.transactionCurrency = transactionCurrency;
        self.transactionAmount = transactionAmount;
        self.billNumber = billNumber;
        self.mobileNumber = mobileNumber;
        self.storeLabel = storeLabel;
        self.terminalLabel = terminalLabel;
        self.timestamp = timestamp;
        self.crc = crc;
        
    }
    return self;
    
}

-(void)printAll {
    LogVariable(payloadFormatIndicator);
    LogVariable(pointOfInitiationMethod);
    LogVariable(merchantType);
    LogVariable(bakongAccountID);
    LogVariable(merchantAccountId);
    LogVariable(accountInformation);
    LogVariable(acquiringBank);
    LogVariable(merchantCategoryCode);
    LogVariable(countryCode);
    LogVariable(merchantName);
    LogVariable(merchantCity);
    LogVariable(transactionCurrency);
    LogVariable(transactionAmount);
    LogVariable(billNumber);
    LogVariable(mobileNumber);
    LogVariable(storeLabel);
    LogVariable(terminalLabel);
    LogVariable(timestamp);
    LogVariable(crc);
}

@end
