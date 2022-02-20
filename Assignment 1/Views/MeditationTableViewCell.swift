//
//  MeditationTableViewCell.swift
//  Assignment 1
//
//  Created by Tim Bausch on 2/19/22.
//

import UIKit

class MeditationTableViewCell: UITableViewCell {

    @IBOutlet var meditationImage: UIImageView!
    @IBOutlet var meditationTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        meditationImage.layer.cornerRadius = 6.0
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
