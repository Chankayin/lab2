//
//  ExpDetailViewController.swift
//  Joakim_lab2
//
//  Created by Joakim Chan on 2019-12-07.
//  Copyright © 2019 Joakim Chan. All rights reserved.
//

import UIKit

class ExpDetailViewController: UIViewController {

 @IBOutlet weak var DetailedImage: UIImageView!
        @IBOutlet weak var DetailedLabel: UILabel!
        
        var working: work = work(name:"", imageName:"")
        var edu: Education = Education(name:"", imageName:"")
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if(working.name != ""){
                DetailedLabel.text = working.name
                DetailedImage.image = UIImage(named: working.imageName)
            }else{
                DetailedLabel.text = edu.name
                DetailedImage.image = UIImage(named: edu.imageName)
            }
        }

    }
