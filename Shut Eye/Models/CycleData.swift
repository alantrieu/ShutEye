//
//  CycleData.swift
//  Shut Eye
//
//  Created by Alan Trieu on 6/9/2022.
//

import Foundation

struct CycleData {
    private let cycleTimes: [Int: String]
    private var currentCycle: Int = 5
    
    static func getDefaultCycle() -> Int {
        return 5
    }
    
    init(cycleTimes: [Int: String]) {
        self.cycleTimes = cycleTimes
    }
    
    func getHours(cycle: Int) -> String {
        let hours = Double(90 * cycle) / Double(60)
        return (floor(hours) == hours) ? String(format: "%.0f", hours) : String(hours)
    }
    
    func getTime(cycle: Int) -> String {
        guard let retVal = cycleTimes[cycle] else {
            fatalError("Error retrieving cycle times.")
        }
        return retVal
    }
    
    func getCurrentCycle() -> Int {
        return currentCycle
    }
    
    mutating func incrementCurrentCycle() -> Int {
        currentCycle = (currentCycle == 6) ? 3 : currentCycle + 1
        return currentCycle
    }
    
    mutating func decrementCurrentCycle() -> Int {
        currentCycle = (currentCycle == 3) ? 6 : currentCycle - 1
        return currentCycle
    }
}
