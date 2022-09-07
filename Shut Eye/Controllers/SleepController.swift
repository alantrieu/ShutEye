//
//  ViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 27/8/2022.
//

import UIKit

class SleepController: UIViewController {
    
    let formatter = DateFormatter()
    var timeString: String?
    let cycleCalc = CycleCalculator()
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.dateFormat = "hh:mm a"
        
        logoView.image = UIImage(systemName: K.Symbols.moon)
        timePicker.setValue(K.Colors.textColor, forKey: "textColor")
        timeString = formatter.string(from: timePicker.date)
    }
    
    @IBAction func timeChanged(_ sender: UIDatePicker) {
        timeString = formatter.string(from: sender.date)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.Segues.results, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == K.Segues.results) {
            let cycleData = CycleData(cycleTimes: cycleCalc.calculateCycles(time: timePicker.date, with: formatter, sleep: true))
            
            let destVC = segue.destination as! ResultsViewController
            destVC.cycleData = cycleData
            destVC.titleText = K.Segues.sleepResults
        }
    }
}

