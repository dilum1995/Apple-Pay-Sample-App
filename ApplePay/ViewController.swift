//
//  ViewController.swift
//  ApplePay
//
//  Created by Himanshu on 3/28/19.
//  Copyright © 2019 Himanshu. All rights reserved.
//

import UIKit
import PassKit

class ViewController: UIViewController {
    @IBOutlet weak var pay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    //@IBAction func purchaseItem(_ sender: Any) {
        @IBAction func pay(_ sender: Any) {
        
            let request = PKPaymentRequest()
            request.merchantIdentifier = "kohls.merchant.net.mobindustry"
            request.supportedNetworks = [PKPaymentNetwork.visa, PKPaymentNetwork.masterCard, PKPaymentNetwork.amex]
            request.merchantCapabilities = PKMerchantCapability.capability3DS
            request.countryCode = "US"
            request.currencyCode = "USD"
            
            request.paymentSummaryItems = [
                PKPaymentSummaryItem(label: "Blue Shirt", amount: 6.00)
            ]
            
            let applePayController = PKPaymentAuthorizationViewController(paymentRequest: request)
            self.present(applePayController!, animated: true, completion: nil)
        
        }
    
    }




