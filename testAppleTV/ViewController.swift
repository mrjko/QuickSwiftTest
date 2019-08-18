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
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(button)
        configure(button2)
    }
    
    private func configure(_ button: UIButton) {
        button.adjustsImageWhenHighlighted = true
        button.layer.cornerRadius = 10
        let imageView = createImageView(for: button)
        button.addSubview(imageView)
    }
    
    private func createImageView(for button: UIButton) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: "preview1.lsr"))
        imageView.adjustsImageWhenAncestorFocused = true
        imageView.frame = button.bounds
        return imageView
    }
}
