//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let earthYearInSeconds: Float = 31557600.00

func ageToSeconds(ageInYears: Int) -> Float {
    return Float(ageInYears) * earthYearInSeconds
}

var age = ageToSeconds(25)

func ageToPlanetYears(ageInEarthSeconds: Float, orbitalRatio: Float) -> Float {
    return ageInEarthSeconds / (earthYearInSeconds * orbitalRatio)
}

ageToPlanetYears(age, orbitalRatio: 1.8808158)


struct Planet{
    let name: String
    let orbitalRatio: Float
    let earthYearInSeconds: Float = 31557600.00
    let demonym: String
    
    func ageToPlanetYears(ageInEarthSeconds: Float) -> Float {
        let unroundedAge = ageInEarthSeconds / (earthYearInSeconds * self.orbitalRatio)
        return round(1000 * unroundedAge) / 1000
    }
}

let mercury = Planet(name: "Mercury", orbitalRatio: 0.2408467, demonym: "Mercurian")
let venus = Planet(name: "Venus", orbitalRatio: 0.61519726, demonym: "Venetian")
let earth = Planet(name: "Earth", orbitalRatio: 1.0, demonym: "Earth")
let mars = Planet(name: "Mars", orbitalRatio: 1.8808158, demonym: "Martian")
let jupiter = Planet(name: "Jupiter", orbitalRatio: 11.862615 , demonym: "Jovian")
let saturn = Planet(name: "Saturn", orbitalRatio: 29.447498, demonym: "Saturnian")
let uranus = Planet(name: "Uranus", orbitalRatio: 84.016846, demonym: "Uranian")
let neptune = Planet(name: "Neptune", orbitalRatio: 164.79132, demonym: "Neptunian")
let planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

var planet = planets[6]

print("You are \(planet.ageToPlanetYears(age)) in \(planet.demonym) years!")
