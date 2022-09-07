//
//  Constants.swift
//  Shut Eye
//
//  Created by Alan Trieu on 7/9/2022.
//

import UIKit

struct K {
    struct Colors {
        static let textColor = UIColor.white
    }
    
    struct Symbols {
        static let sleepControllerLogo = "moon.zzz"
        static let resultsControllerLogo = "sun.and.horizon"
    }
    
    struct SegueIDs {
        static let results = "toResults"
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
