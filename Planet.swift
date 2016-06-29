//
//  Planet.swift
//  spage age
//
//  Created by Katie Bautista on 29/06/2016.
//  Copyright © 2016 Katie Bautista. All rights reserved.
//

import Foundation

struct Planet {
    let name: String
    let orbitalRatio: Float
    let earthYearInSeconds: Float = 31557600.00
    let demonym: String
    
    func ageToPlanetYears(ageInEarthSeconds: Float) -> Float {
        let unroundedAge = ageInEarthSeconds / (earthYearInSeconds * self.orbitalRatio)
        return round(1000 * unroundedAge) / 1000
    }
}