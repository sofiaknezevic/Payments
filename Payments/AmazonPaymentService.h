//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Sofia Knezevic on 2017-02-10.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end
