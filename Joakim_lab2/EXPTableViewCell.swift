//
//  EXPTableViewCell.swift
//  Joakim_lab2
//
//  Created by Joakim Chan on 2019-12-07.
//  Copyright © 2019 Joakim Chan. All rights reserved.
//

import UIKit

class EXPTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageCell: UIImageView!
        @IBOutlet weak var LabelCell: UILabel!
        
        
        override func awakeFromNib() {
            super.awakeFromNib()
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }

    }
