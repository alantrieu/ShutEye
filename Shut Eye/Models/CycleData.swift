//
//  CycleData.swift
//  Shut Eye
//
//  Created by Alan Trieu on 6/9/2022.
//

import Foundation

struct CycleData {
    private let cycleTimes: [Int: String] // dictionary of cycle numbers and their respective wake-up times
    private var currentCycle: Int = K.Cycle.defaultCycle
    
    init(cycleTimes: [Int: String]) {
        self.cycleTimes = cycleTimes
    }
    
    func getHours(cycle: Int) -> String {
        let hours = Double(K.Cycle.cycleMinutes * cycle) / Double(K.Cycle.minutes)
        return (floor(hours) == hours) ? String(format: "%.0f", hours) : String(hours)
    }
    
    func getTime(cycle: Int) -> String {
        guard let retVal = cycleTimes[cycle] else {
            fatalError("Error retrieving cycle times.")
        }
        return retVal
    }
    
    func getDescription(cycle: Int) -> String {
        return "\(getHours(cycle: currentCycle)) hours of sleep, or \(currentCycle) complete cycles"
    }
    
    func getCurrentCycle() -> Int {
        return currentCycle
    }
    
    mutating func incrementCurrentCycle() -> Int {
        currentCycle = (currentCycle == K.Cycle.highestCycle) ? K.Cycle.lowestCycle : currentCycle + 1
        return currentCycle
    }
    
    mutating func decrementCurrentCycle() -> Int {
        currentCycle = (currentCycle == K.Cycle.lowestCycle) ? K.Cycle.highestCycle : currentCycle - 1
        return currentCycle
    }
}
