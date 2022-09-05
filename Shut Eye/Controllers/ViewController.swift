//
//  ViewController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 27/8/2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let hourArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    let minuteArray = [00, 05, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55]
    let periodArray = ["AM", "PM"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView.tag {
        case 1:
            return 12
        case 2:
            return 12
        default:
            return 2
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView.tag {
        case 1:
            return String(hourArray[row])
        case 2:
            return String(minuteArray[row])
        default:
            return periodArray[row]
        }
    }
    

    @IBOutlet weak var hourPicker: UIPickerView!
    @IBOutlet weak var minutePicker: UIPickerView!
    @IBOutlet weak var periodPicker: UIPickerView!
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var logoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calculateButton.sizeToFit()
        
        hourPicker.dataSource = self
        hourPicker.delegate = self
        
        minutePicker.dataSource = self
        minutePicker.delegate = self
        
        periodPicker.dataSource = self
        periodPicker.delegate = self
        
        logoView.image = UIImage(systemName: "moon.zzz")
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toResultsSegue", sender: self)
    }
}

