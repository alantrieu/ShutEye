//
//  CycleCalculator.swift
//  Shut Eye
//
//  Created by Alan Trieu on 6/9/2022.
//

import Foundation

struct CycleCalculator {
    // given a certain time, computes the times for 3, 4, 5 and 6 cycles of sleep as an array of Strings
    func calculateCycles(time: Date, with formatter: DateFormatter, sleep: Bool) -> [Int: String] {
        var cycleDict = [Int: String]()
        for cycleNum in K.Cycle.cycleRange {
            let minuteAmount = K.Cycle.cycleMinutes * cycleNum
            let cycle = (sleep == true) ? time.add(minutes: minuteAmount) : time.subtract(minutes: minuteAmount)
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
    
    func subtract(minutes: Int) -> Date {
        return add(minutes: -minutes)
    }
}
