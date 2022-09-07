//
//  HomeController.swift
//  Shut Eye
//
//  Created by Alan Trieu on 7/9/2022.
//

import UIKit

class HomeController: UIViewController {
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appName.text = K.appName
        appLogo.image = UIImage(systemName: "zzz")
    }
}
