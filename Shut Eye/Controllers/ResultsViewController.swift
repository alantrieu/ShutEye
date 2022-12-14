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
    var isWake: Bool?

    @IBOutlet weak var wakeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var descriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleText
        wakeImageView.image = (isWake == true) ? UIImage(systemName: K.Symbols.moon) : UIImage(systemName: K.Symbols.sun)
        updateUI()
    }
    
    func updateUI() {
        timeLabel.text = cycleData?.getTime(cycle: currentCycle)
        descriptionText.text = cycleData?.getDescription(cycle: currentCycle)
    }
    
    @IBAction func changeCycle(_ sender: UIButton) {
        if let btnText = sender.titleLabel!.text {
            if (btnText == K.Buttons.increment) {
                currentCycle = (isWake == true) ? cycleData!.decrementCurrentCycle() : cycleData!.incrementCurrentCycle()
            } else if (btnText == K.Buttons.decrement) {
                currentCycle = (isWake == true) ? cycleData!.incrementCurrentCycle() : cycleData!.decrementCurrentCycle()
            }
            updateUI()
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
