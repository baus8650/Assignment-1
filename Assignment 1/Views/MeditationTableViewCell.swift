//
//  MeditationTableViewCell.swift
//  Assignment 1
//
//  Created by Tim Bausch on 2/19/22.
//

import UIKit

class MeditationTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var meditationImage: UIImageView!
    @IBOutlet var meditationTitle: UILabel!
    
    // MARK: - LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        meditationImage.layer.cornerRadius = 6.0
        // Initialization code
        
    }

}
