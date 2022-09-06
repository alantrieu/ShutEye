//
//  ResultsViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 5/9/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var cycleData: CycleData?
    var currentCycle = CycleData.getDefaultCycle()

    @IBOutlet weak var wakeImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var descriptionText: UILabel!
    
    func updateUI() {
        timeLabel.text = cycleData?.getTime(cycle: currentCycle)
        descriptionText.text = "\(cycleData!.getHours(cycle: currentCycle)) hours of sleep, or \(currentCycle) complete cycles"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wakeImageView.image = UIImage(systemName: "sun.and.horizon")
        updateUI()
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
