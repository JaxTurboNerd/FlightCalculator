//
//  FlightCalcModel.swift
//  FlightCalculator
//
//  Created by Gregory Boyd on 11/15/18.
//  Copyright © 2018 Gregory Boyd. All rights reserved.
//

import Foundation

struct ThreePilotFlightCalc {
    
    func calculateFlightTime(flightTime: Double) -> (time1: String, time2: String, time3: String) {
        
        //convert flightTime to type Int
        let intFlightTime = Int(flightTime * 10)
        
        var intTime1 = intFlightTime/3
        var intTime2 = intFlightTime/3
        let intTime3 = intFlightTime/3
        
        var sumTime = intTime1 + intTime2 + intTime3
        
        //adjust each time by 1 if necessary
        if sumTime < intFlightTime {
            intTime1 += 1
            sumTime = intTime1 + intTime2 + intTime3
            
            if sumTime < intFlightTime {
                intTime2 += 1
                sumTime = intTime1 + intTime2 + intTime3
            }
        }
        
        //Convert to String to drop trailing zeros
        let time1 = String(Double(intTime1)/10)
        let time2 = String(Double(intTime2)/10)
        let time3 = String(Double(intTime3)/10)
        
        return(time1, time2, time3)
    }
}

struct FourPilotTimeCalc {
    func calculateFlightTime(flightTime: Double) -> (time1: String, time2: String, time3: String, time4: String) {
        
        //convert flightTime to type Int
        let intFlightTime = Int(flightTime * 10)
        
        var intTime1 = intFlightTime/4
        var intTime2 = intFlightTime/4
        var intTime3 = intFlightTime/4
        let intTime4 = intFlightTime/4
        
        var sumTime = intTime1 + intTime2 + intTime3 + intTime4
        
        //adjust each time by 1 if necessary
        if sumTime < intFlightTime {
            intTime1 += 1
            sumTime = intTime1 + intTime2 + intTime3 + intTime4
            
            if sumTime < intFlightTime {
                intTime2 += 1
                sumTime = intTime1 + intTime2 + intTime3 + intTime4
                
                if sumTime < intFlightTime {
                    intTime3 += 1
                    sumTime = intTime1 + intTime2 + intTime3 + intTime4
                }
            }
        }
        
        
        //Convert to String to drop trailing zeros
        let time1 = String(Double(intTime1)/10)
        let time2 = String(Double(intTime2)/10)
        let time3 = String(Double(intTime3)/10)
        let time4 = String(Double(intTime4)/10)
        
        return(time1, time2, time3, time4)
    }
    
    func calculateCrewTimes(flightTime: Double) -> (crewTime1: String, crewTime2: String, crewTime3: String, crewTime4: String) {
        //convert flightTime to type Int
        let intFlightTime = Int(flightTime * 10)
        
        var intTime1 = intFlightTime/4
        var intTime2 = intFlightTime/4
        var intTime3 = intFlightTime/4
        let intTime4 = intFlightTime/4
        
        var sumTime = intTime1 + intTime2 + intTime3 + intTime4
        
        //adjust each time by 1 if necessary
        if sumTime < intFlightTime {
            intTime1 += 1
            sumTime = intTime1 + intTime2 + intTime3 + intTime4
            
            if sumTime < intFlightTime {
                intTime2 += 1
                sumTime = intTime1 + intTime2 + intTime3 + intTime4
                
                if sumTime < intFlightTime {
                    intTime3 += 1
                    sumTime = intTime1 + intTime2 + intTime3 + intTime4
                }
            }
        }
        //Calculate each crew time:
        let intCrewTime1 = intFlightTime - intTime1 - intTime2
        let intCrewTime2 = intFlightTime - intTime2 - intTime3
        let intCrewTime3 = intFlightTime - intTime3 - intTime4
        let intCrewTime4 = intFlightTime - intTime4 - intTime1
        
        //final output format:
        let crewTime1 = String(Double(intCrewTime1)/10)
        let crewTime2 = String(Double(intCrewTime2)/10)
        let crewTime3 = String(Double(intCrewTime3)/10)
        let crewTime4 = String(Double(intCrewTime4)/10)
        
        return(crewTime1, crewTime2, crewTime3, crewTime4)
    }
}
