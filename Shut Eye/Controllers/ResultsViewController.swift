//
//  ResultsViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 5/9/2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var wakeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wakeImageView.image = UIImage(systemName: "sun.and.horizon")
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
