//
//  Constants.swift
//  Shut Eye
//
//  Created by Alan Trieu on 7/9/2022.
//

import UIKit

struct K {
    static let appName = "Shut Eye"
    
    struct Colors {
        static let textColor = UIColor.white
    }
    
    struct Symbols {
        static let moon = "moon.zzz"
        static let sun = "sun.and.horizon"
    }
    
    struct Buttons {
        static let increment = "+"
        static let decrement = "−"
    }
    
    struct Segues {
        static let results = "toResults"
        static let sleepResults = "For a good night's sleep, try to wake up at..."
        static let wakeResults = "For a goodnight's sleep, try to sleep at..."
    }
    
    struct Cycle {
        static let cycleRange = 3...6
        static let cycleMinutes = 90
        static let defaultCycle = 5
        static let lowestCycle = 3
        static let highestCycle = 6
        static let minutes = 60
    }
}
