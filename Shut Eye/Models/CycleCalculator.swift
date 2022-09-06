//
//  CycleCalculator.swift
//  Shut Eye
//
//  Created by Alan Trieu on 6/9/2022.
//

import Foundation

// Manages and keeps track of sleep cycles
struct CycleCalculator {
    
    // given a certain time, computes the wake up times for 3, 4, 5 and 6 cycles of sleep as an array of Strings
    func calculateCycles(time: Date, with formatter: DateFormatter) -> [Int: String] {
        var cycleDict = [Int: String]()
        for cycleNum in 3...6 {
            let cycle = time.add(minutes: 90 * cycleNum)
            cycleDict[cycleNum] = formatter.string(from: cycle)
        }
        return cycleDict
    }
}

// extending Date to allow for easy time arithmetic
extension Date {
    func add(minutes: Int) -> Date {
        return Calendar.current.date(byAdding: .minute, value: minutes, to: self)!
    }
}
