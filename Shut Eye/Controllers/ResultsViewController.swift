//
//  ResultsViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 5/9/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var time: String?

    @IBOutlet weak var wakeImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wakeImageView.image = UIImage(systemName: "sun.and.horizon")
        timeLabel.text = time
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
