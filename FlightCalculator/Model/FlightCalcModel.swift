//
//  FlightCalcModel.swift
//  FlightCalculator
//
//  Created by Gregory Boyd on 11/15/18.
//  Copyright © 2018 Gregory Boyd. All rights reserved.
//

import Foundation

struct FlightTime {
    
    func calculateFlightTime(flightTime: Double) -> (stringTime1: String, stringTime2: String, stringTime3: String) {
        
        //convert flightTime to type Int
        let intFlightTime = Int(flightTime * 10)
        
        let dividedResult = intFlightTime/3
        
        var intTime1 = dividedResult
        var intTime2 = dividedResult
        var intTime3 = dividedResult
        
        var sumTime = intTime1 + intTime2 + intTime3
        
        //adjust each time by 1 if necessary
        if sumTime < intFlightTime {
            intTime1 += 1
            sumTime = intTime1 + intTime2 + intTime3
            
            if sumTime < intFlightTime {
                intTime2 += 1
                sumTime = intTime1 + intTime2 + intTime3
                
                if sumTime < intFlightTime {
                    intTime3 += 1
                    sumTime = intTime1 + intTime2 + intTime3
                }
            }
        }
        
        //Convert back to type Double
        let doubleTime1 = Double(intTime1)/10
        let doubleTime2 = Double(intTime2)/10
        let doubleTime3 = Double(intTime3)/10
        
        //Convert to String to drop trailing zeros
        let stringTime1 = String(doubleTime1)
        let stringTime2 = String(doubleTime2)
        let stringTime3 = String(doubleTime3)
        
        return(stringTime1, stringTime2, stringTime3)
    }
}