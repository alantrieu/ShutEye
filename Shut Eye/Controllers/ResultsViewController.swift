//
//  ResultsViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 5/9/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var time: [Int: String]?

    @IBOutlet weak var wakeImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var descriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wakeImageView.image = UIImage(systemName: "sun.and.horizon")
        timeLabel.text = time?[3]
        descriptionText.text = "\(Double(90 * 3) / Double(60)) hours of sleep, or \(3) complete cycles"
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
