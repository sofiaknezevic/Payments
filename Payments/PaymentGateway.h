//
//  PaymentGateway.h
//  Payments
//
//  Created by Sofia Knezevic on 2017-02-10.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGatewayDelegate.h"

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentGatewayDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger)amount;

@end
