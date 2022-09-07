//
//  ResultsViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 5/9/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var cycleData: CycleData?
    var currentCycle = K.Cycle.defaultCycle
    var titleText: String?

    @IBOutlet weak var wakeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var descriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleText
        wakeImageView.image = UIImage(systemName: K.Symbols.sun)
        updateUI()
    }
    
    func updateUI() {
        timeLabel.text = cycleData?.getTime(cycle: currentCycle)
        descriptionText.text = cycleData?.getDescription(cycle: currentCycle)
    }

    @IBAction func incrementButtonPressed(_ sender: UIButton) {
        currentCycle = cycleData!.incrementCurrentCycle()
        updateUI()
    }
    
    @IBAction func decrementButtonPressed(_ sender: UIButton) {
        currentCycle = cycleData!.decrementCurrentCycle()
        updateUI()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
