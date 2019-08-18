//
//  ViewController.swift
//  testAppleTV
//
//  Created by Jimmy Ko on 2019-06-13.
//  Copyright © 2019 Jimmy Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello world")
        
        button.adjustsImageWhenHighlighted = true
        let backgroundImage = UIImageView(image: UIImage(named: "preview1.lsr"))
        backgroundImage.adjustsImageWhenAncestorFocused = true
        backgroundImage.frame = button.bounds
        button.layer.cornerRadius = 10
        button.addSubview(backgroundImage)
        
        button2.adjustsImageWhenHighlighted = true
        let backgroundImage2 = UIImageView(image: UIImage(named: "preview1.lsr"))
        backgroundImage2.adjustsImageWhenAncestorFocused = true
        backgroundImage2.frame = button2.bounds
        button2.layer.cornerRadius = 10
        button2.addSubview(backgroundImage2)
    }
}
