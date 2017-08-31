//
//  ViewController.swift
//  TestCocopods
//
//  Created by Dung Do on 8/28/17.
//  Copyright © 2017 Dung Do. All rights reserved.
//

import UIKit
import PKHUD
import Kingfisher
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.imgHinh.kf.indicatorType = .activity
//        self.imgHinh.kf.setImage(with: URL(string: "https://pbs.twimg.com/profile_images/573600918144319488/Dz_wK2rW.jpeg"))
        
//        let test = NetworkReachabilityManager()!
//        print(test.isReachable)
        
//        let reachabilityManager = NetworkReachabilityManager()!
//        reachabilityManager.listener = { status in
//            if (status != .unknown && status != .notReachable) {
//                print("Connected")
//            } else {
//                print("Disconnect")
//            }
//        }
//        reachabilityManager.startListening()
        Alamofire.request("https://postman-echo.com/get?test=123").responseJSON { (response) in
            print(Int(JSON(response.result.value!)["args"]["test"].string!)!)
            
//            let dic: [String:Any] = response.result.value as! [String : Any]
//
//            if let test = dic["args"] as? Dictionary<String,Any> {
//                if let so = test["test"] as? String {
//                    print(Int(so)!)
//                }
//            }
        }
        
        
    }

    @IBAction func onClickShowHUD(_ sender: Any) {
        let params: Parameters = [
            "strange":"boom"
        ]
        HUD.show(.progress)
        Alamofire.request("https://postman-echo.com/post", method: .post, parameters: params).responseJSON { (response) in
            HUD.hide(animated: true)
            print(JSON(response.result.value!)["form"]["strange"].string!)
        }
    }
}

