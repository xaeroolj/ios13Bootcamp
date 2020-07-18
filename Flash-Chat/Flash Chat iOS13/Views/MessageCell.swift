//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Roman Trekhlebov on 18.07.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messgaBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messgaBubble.layer.cornerRadius = messgaBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
