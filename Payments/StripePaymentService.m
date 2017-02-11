//
//  StripePaymentService.m
//  Payments
//
//  Created by Sofia Knezevic on 2017-02-10.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)amount
{
    NSLog(@"\nYou have paid with Stripe!");
}

-(BOOL)canProcessPayment
{
    int zeroOrOne = arc4random_uniform(2);
    BOOL canPay;
    
    if (zeroOrOne == 0) {
        
        canPay = NO;
        
    }else{
        
        canPay = YES;
        
    }
    
    return canPay;

}
@end
