//
//  MeditationViewController.swift
//  Assignment 1
//
//  Created by Tim Bausch on 2/19/22.
//

import UIKit

class MeditationViewController: UIViewController {

    // MARK: - Properties
    var image: UIImage?
    var instructions: String?

    // MARK: - IBOutlets
    @IBOutlet var instructionsLabel: UILabel!
    @IBOutlet var instructionsText: UITextView!
    @IBOutlet var meditationImage: UIImageView!
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        instructionsText.text = instructions
        meditationImage.image = image
        
    }

}
