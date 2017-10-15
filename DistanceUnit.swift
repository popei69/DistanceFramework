//
//  DistanceUnit.swift
//  Pods
//
//  Created by Benoit PASQUIER on 15/10/2017.
//
//

import Foundation

protocol UnitProtocol {
    static var count : Int { get }
    
    var description : String { get }
}

enum DistanceUnit : Int, UnitProtocol {
    case mile
    case kilometer
    
    static var count: Int = 2
    
    var description: String {
        switch self {
        case .mile:
            return "Mile"
        case .kilometer:
            return "Km"
        }
    }
}

struct Distance {
    var value : Double
    var unit: DistanceUnit
    
    var descriptionValue : String {
        return "\(value.rounded(to: 2))"
    }
}
