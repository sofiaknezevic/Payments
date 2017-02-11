//
//  PaymentDelegate.h
//  Payments
//
//  Created by Sofia Knezevic on 2017-02-10.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end

