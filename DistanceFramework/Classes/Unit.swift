//
//  Unit.swift
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

public enum DistanceUnit : Int, UnitProtocol {
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
