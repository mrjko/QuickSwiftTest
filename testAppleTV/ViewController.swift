//
//  ViewController.swift
//  testAppleTV
//
//  Created by Jimmy Ko on 2019-06-13.
//  Copyright © 2019 Jimmy Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ipAddress: UITextField!
    @IBOutlet weak var port: UITextField!
    @IBOutlet weak var userName: UITextField!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello world")
        port.isHidden = (viewModel.port == nil)
    }
    
    @IBAction func textFieldEndEdit(_ sender: Any) {
        guard let i = ipAddress.text,
            let p = port.text,
            let u = userName.text else {
                return
        }
        
        let data = Data(i, p, u)
        
        viewModel.updateValues(data)
        
        updateUI()
    }
    
    func updateUI() {
        ipAddress.text = viewModel.ipAddress
        port.isHidden = (viewModel.port == nil)
        port.text = viewModel.port
        userName.text = viewModel.userName
    }
    
}

struct Data {
    var ipAddress: String
    var port: String
    var userName: String
    
    init(_ ip: String, _ port: String, _ un: String) {
        self.ipAddress = ip
        self.port = port
        self.userName = un
    }
}
