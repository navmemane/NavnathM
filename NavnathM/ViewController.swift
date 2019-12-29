//
//  ViewController.swift
//  NavnathM
//
//  Created by apple on 28/12/19.
//  Copyright © 2019 Proximate. All rights reserved.
//

import UIKit
import CleverTapSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let profile: Dictionary<String, String> = [
//            //Update pre-defined profile properties
//            "Name": "Navnath Memane",
//            "Email": "nav.memane@yahoo.com",
//            //Update custom profile properties
//            "Plan type": "Customer Success",
//            "Favorite Food": "TAM"
//        ]
//
//        CleverTap.sharedInstance()?.profilePush(profile)
        
       // CleverTap.sharedInstance()?.recordEvent("Product viewed")

    }

    @IBAction func eventButtonTap(_ sender: Any) {
        
        // event with properties
        let props = ["Product ID": 1,
            "Product Image": "https://d35fo82fjcw0y8.cloudfront.net/2018/07/26020307/customer-success-clevertap.jpg",
            "Product Name": "CleverTap","Email": "dk+nav.memane@clevertap.com"] as [String : Any]

        CleverTap.sharedInstance()?.recordEvent("Product viewed", withProps: props)
    }
    
    @IBAction func uploadAction(_ sender: Any) {
    }
    
}

