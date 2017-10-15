//
//  Distance.swift
//  Pods
//
//  Created by Benoit PASQUIER on 15/10/2017.
//
//

import Foundation

public struct Distance {
    public var value : Double
    public var unit: DistanceUnit
    
    public init(value: Double, unit: DistanceUnit) {
        self.value = value
        self.unit = unit
    }
    
    public var descriptionValue : String {
        return "\(value.rounded(to: 2))"
    }
}
