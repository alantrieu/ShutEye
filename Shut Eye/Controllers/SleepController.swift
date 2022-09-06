//
//  ViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 27/8/2022.
//

import UIKit

class SleepController: UIViewController {
    
    let hourArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    let minuteArray = [00, 05, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55]
    let periodArray = ["AM", "PM"]

    let formatter = DateFormatter()
    var timeString: String?
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.dateFormat = "hh:mm a"
        
        logoView.image = UIImage(systemName: "moon.zzz")
        timePicker.setValue(UIColor.white, forKey: "textColor")
        timeString = formatter.string(from: timePicker.date)
    }
    
    @IBAction func timeChanged(_ sender: UIDatePicker) {
        timeString = formatter.string(from: sender.date)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResults") {
            let cycleCalc = CycleCalculator()
            let cycleData = CycleData(cycleTimes: cycleCalc.calculateCycles(time: timePicker.date, with: formatter))
            
            let destVC = segue.destination as! ResultsViewController
            destVC.cycleData = cycleData
        }
    }
}

