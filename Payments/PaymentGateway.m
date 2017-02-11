//
//  PaymentGateway.m
//  Payments
//
//  Created by Sofia Knezevic on 2017-02-10.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount
{
    if([self.paymentDelegate canProcessPayment]){
        
        [self.paymentDelegate processPaymentAmount:amount];
        
    }else{
        
        NSLog(@"\nSorry, we are unable to process your payment at this time.");
    }
    
}

@end
