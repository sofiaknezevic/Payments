//
//  main.m
//  Payments
//
//  Created by Sofia Knezevic on 2017-02-10.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PayPalPaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomNumber = arc4random_uniform(1001)+100;
        


        NSLog(@"\nThank you for shopping at Acme.com\nYour total today is $%i\n\nPlease select your payment method:\n1:Paypal\n2:Stripe\n3:Amazon", randomNumber);
        
        UserInput *inputUser = [[UserInput alloc] init];
        int choice = [[inputUser getString]intValue];
        
        PaymentGateway *gatewayPayment = [[PaymentGateway alloc] init];
        
        NSLog(@"input was: %d", choice);
        
        switch (choice) {
                
            case 1:{
                PayPalPaymentService *payPalService = [[PayPalPaymentService alloc] init];
                gatewayPayment.paymentDelegate = payPalService;
                [gatewayPayment processPaymentAmount:randomNumber];
                break;
            }
                
            case 2:{
                StripePaymentService *stripeService = [[StripePaymentService alloc] init];
                gatewayPayment.paymentDelegate = stripeService;
                [gatewayPayment processPaymentAmount:randomNumber];
                break;
            }
                
            case 3:{
                AmazonPaymentService *amazonService = [[AmazonPaymentService alloc] init];
                gatewayPayment.paymentDelegate = amazonService;
                [gatewayPayment processPaymentAmount:randomNumber];
                break;
            }
            default:
                break;
        }
        
    
        
    }
    return 0;
}
