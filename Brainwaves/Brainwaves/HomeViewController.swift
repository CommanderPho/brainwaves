//
//  HomeViewController.swift
//  Brainwaves
//
//  Created by Nikhil D'Souza on 4/1/16.
//  Copyright © 2016 Nikhil. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {

    @IBOutlet weak var outputText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputText.allowsEditingTextAttributes = false
        
        Alamofire.request(.GET, "https://59edf148.ngrok.io")
            .responseJSON { response in
                if let JSON = response.result.value {
                    
                    for node in JSON as! [String: AnyObject] {
                        let nodeData = node.1["value"]!
                        self.outputText.text! += node.0 + ": " + String(nodeData!) + "\n"
                    }
                    
                }
        }
    }
    
}
