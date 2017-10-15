//
//  DistanceConverter.swift
//  Pods
//
//  Created by Benoit PASQUIER on 15/10/2017.
//
//

import Foundation

class DistanceConverter {
    
    private static let mileToKm = 1.60934
    
    public static func convert(_ distance: Distance, to newUnit: DistanceUnit) -> Distance {
        
        var tmpDistanceValue = distance.value 
        
        switch distance.unit {
        case .mile: 
            tmpDistanceValue = DistanceConverter.mileTo(tmpDistanceValue, to: newUnit)
        case .kilometer: 
            tmpDistanceValue = DistanceConverter.kmTo(tmpDistanceValue, to: newUnit)
        default:
            return distance
        }
        
        return Distance(value: tmpDistanceValue, unit: newUnit)
    }
    
    private static func mileTo(_ mileDistance: Double, to newUnit: DistanceUnit) -> Double {
        switch newUnit {
        case .kilometer:
            return mileDistance * mileToKm
        default:
            return mileDistance
        }
    }
    
    private static func kmTo(_ kmDistance: Double, to newUnit: DistanceUnit) -> Double {
        switch newUnit {
        case .mile:
            return kmDistance / mileToKm
        default:
            return kmDistance
        }   
    }
}
