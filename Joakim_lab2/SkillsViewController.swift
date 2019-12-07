//
//  SkillsViewController.swift
//  Joakim_lab2
//
//  Created by Joakim Chan on 2019-12-07.
//  Copyright © 2019 Joakim Chan. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

       
        @IBOutlet weak var imageView: UIImageView!
        
        var images: [UIImage] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            images = [
                UIImage(named: "lion1"),
                UIImage(named: "lion2"),
                UIImage(named: "lion3"),
                UIImage(named: "lion4"),
                UIImage(named: "lion5"),
                UIImage(named: "lion6"),
                UIImage(named: "lion7"),
                UIImage(named: "lion8"),
                UIImage(named: "lion9"),
                UIImage(named: "lion10")
            ] as! [UIImage]
            imageView.animationImages = images
            imageView.animationDuration = 2
            imageView.startAnimating()

        }
        
    }
