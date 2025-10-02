//
//  AdditionalData.h
//  BakongKHQR
//
//  Created by Seth Sambo on 2/6/21.
//

#import <Foundation/Foundation.h>
#import "TagLengthStringProtocol.h"
#import "BillNumber.h"
#import "MobileNumber.h"
#import "StoreLabel.h"
#import "TerminalLabel.h"

@interface BKAdditionalData : NSObject<TagLengthStringProtocol>

-(id)initWithBillNumber :(NSString *)billNumber storeLabel: (NSString *)storeLabel terminalLabel: (NSString *) terminalLabel;
-(NSString *) decodeWithQr: (NSString *)qr;

-(void)setBillNumber: (NSString *)billNumber;
-(void)setMobileNumber: (NSString *)mobileNumber;
-(void)setStoreLabel: (NSString *)storeLabel;
-(void)setTerminalLabel: (NSString *)terminalLabel;

-(NSString *) getBillNumber;
-(NSString *) getMobileNumber;
-(NSString *) getStoreLabel;
-(NSString *) getTerminalLabel;

-(BOOL)IsEmpty;

@end

