//
//  ResultsViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 5/9/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var time: [Int: String]?
    var currentCycle = 3

    @IBOutlet weak var wakeImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var descriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wakeImageView.image = UIImage(systemName: "sun.and.horizon")
        timeLabel.text = time?[currentCycle]
        descriptionText.text = "\(Double(90 * currentCycle) / Double(60)) hours of sleep, or \(currentCycle) complete cycles"
    }

    @IBAction func incrementButtonPressed(_ sender: UIButton) {
        // move to next cycle
        if (currentCycle == 6) {
            currentCycle = 3
        } else {
            currentCycle += 1
        }
        
        timeLabel.text = time?[currentCycle]
        descriptionText.text = "\(Double(90 * currentCycle) / Double(60)) hours of sleep, or \(currentCycle) complete cycles"
    }
    
    @IBAction func decrementButtonPressed(_ sender: UIButton) {
        // move to previous cycle
        if (currentCycle == 3) {
            currentCycle = 6
        } else {
            currentCycle -= 1
        }
        
        timeLabel.text = time?[currentCycle]
        descriptionText.text = "\(Double(90 * currentCycle) / Double(60)) hours of sleep, or \(currentCycle) complete cycles"
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
