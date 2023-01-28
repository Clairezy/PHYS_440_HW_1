//
//  Shape.swift
//  Homework 1
//
//  Created by Claire on 1/15/23.
//

import Foundation

enum shapeError: Error {
    case negativeDimension
    case noDimension
}

struct Sphere {
    private var _radius: Double = 0.0 //create a double called radius when Sphere is called
    
    var radius: Double {
        get{
            return self._radius
        }
        set{
            if newValue > 0.0 {
                self._radius = newValue
            }
        }
    }
    
    init(radius: Double) throws {
        
        guard radius >= 0 else {
            throw shapeError.negativeDimension
        }
        guard radius != 0 else {
            throw shapeError.noDimension
        }
        
        self.radius = radius
    }
    
    func spherevolume()-> Double {
        return 4/3*Double.pi*pow(radius,3)
    }
    func boxvolume()-> Double {
        return pow(2*radius, 3)
    }
    func spheresurf()-> Double {
        return 4*Double.pi*pow(radius,2)
    }
    func boxsurf()-> Double {
        return 6*pow(2*radius,2)
    }
}
