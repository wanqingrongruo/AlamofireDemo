//
//  ViewController.swift
//  AlamofireBoxue
//
//  Created by 婉卿容若 on 2017/4/12.
//  Copyright © 2017年 婉卿容若. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://httpbin.org/ip", method: .get).response { response in
            print(response.request ?? "")
            print(response.response ?? "")
            print(response.data ?? "")
            print(response.error ?? "")
        }.responseString { (response) in
            print("String ----------")
            
            switch response.result {
            case .success(let str):
                print("\(type(of: str))")
            case .failure(let error):
                print("\(error)")
                
            }
        }
        
        
        let params = ["post": "value", "arr": ["1","2"], "dic": ["key1": "value1", "key2": "value2"]] as [String : Any]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

