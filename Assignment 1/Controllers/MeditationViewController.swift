//
//  MeditationViewController.swift
//  Assignment 1
//
//  Created by Tim Bausch on 2/19/22.
//

import UIKit

class MeditationViewController: UIViewController {

    var image: UIImage?
    var instructions: String?

    @IBOutlet var instructionsLabel: UILabel!
    @IBOutlet var instructionText: UITextView!
    @IBOutlet var meditationImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        instructionText.text = instructions
        meditationImage.image = image
    }

}
