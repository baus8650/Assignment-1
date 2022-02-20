//
//  MeditationViewController.swift
//  Assignment 1
//
//  Created by Tim Bausch on 2/19/22.
//

import UIKit

class MeditationListViewController: UIViewController {
    
    // MARK: - Properties
    var meditationList = [Meditation]()
    
    // MARK: - IBOutlets
    @IBOutlet var meditationTable: UITableView!
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        
        super.viewDidLoad()
        generateMeditations()
        meditationTable.dataSource = self
        meditationTable.delegate = self
        meditationTable.backgroundColor = UIColor.clear
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = meditationTable.frame
        meditationTable.backgroundView = blurEffectView
        
    }
    
    // MARK: - Helper Functions
    func generateMeditations() {
        for i in 0...2 {
            meditationList.append(
                Meditation(name: "Meditation \(i)", image: UIImage(named: "meditation-\(i)"), instructions: "Breathe deeply.")
            )
        }
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "ListToMeditation") {
            
            let destinationVC = segue.destination as! MeditationViewController
            let row = (sender as! NSIndexPath).row; //we know that sender is an NSIndexPath here.
            let meditation = meditationList[row]
            destinationVC.title = meditation.name
            destinationVC.image = meditation.image
            destinationVC.instructions = meditation.instructions
            
        }
        
    }
    
}

// MARK: - TableView Data Source Extension
extension MeditationListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meditationList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MeditationTableViewCell", for: indexPath) as! MeditationTableViewCell
        let meditation = meditationList[indexPath.row]
        cell.meditationImage.image = meditation.image
        cell.meditationTitle.text = meditation.name
        return cell
        
    }
    
}

// MARK: - TableView Delegate Extension
extension MeditationListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ListToMeditation", sender: indexPath);
    }
    
}
