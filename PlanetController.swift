//
//  PlanetController.swift
//  SolarSystem
//
//  Created by Colby Mehmen on 3/28/23.
//

import Foundation

struct PlanetController {
    
    static let shared = PlanetController()
    
    func updateFavorite(planet: Planet) {
        planet.favorite = !planet.favorite
    }
    
    let planets: [Planet] = [
        Planet(planetName: "Mercury", namesake: "Roman god of speed", orderNumber: PlanetOrder.mercury.rawValue, dayLengthInEarthDays: 59, yearLengthInDays: 88, radiusInMiles: 1516, moonCount: 0, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 0.4),
        
        Planet(planetName: "Venus", namesake: "Roman goddess of love", orderNumber: PlanetOrder.venus.rawValue, dayLengthInEarthDays: 243, yearLengthInDays: 225, radiusInMiles: 7520, moonCount: 0, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 0.7),
        
        Planet(planetName: "Earth", namesake: "The ground", orderNumber: PlanetOrder.earth.rawValue, dayLengthInEarthDays: 1, yearLengthInDays: 365, radiusInMiles: 3959, moonCount: 1, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 1),
        
        Planet(planetName: "Mars", namesake: "Roman god of war", orderNumber: PlanetOrder.mars.rawValue, dayLengthInEarthDays: 1.025, yearLengthInDays: 687, radiusInMiles: 2106, moonCount: 2, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 1.5),
        
        Planet(planetName: "Jupiter", namesake: "King of the Roman gods", orderNumber: PlanetOrder.jupiter.rawValue, dayLengthInEarthDays: 0.416, yearLengthInDays: 4333, radiusInMiles: 43440.7 , moonCount: 79, ringCount: 4, planetType: PlanetType.gasGiant.rawValue, distanceFromSun: 5.2),
        
        Planet(planetName: "Saturn", namesake: "Father of Jupiter", orderNumber: PlanetOrder.saturn.rawValue, dayLengthInEarthDays: 0.445, yearLengthInDays: 10759, radiusInMiles: 36183.7, moonCount: 62, ringCount: 8, planetType: PlanetType.gasGiant.rawValue, distanceFromSun: 9.5),
        
        Planet(planetName: "Uranus", namesake: "Greek god of the sky", orderNumber: PlanetOrder.uranus.rawValue, dayLengthInEarthDays: 0.70, yearLengthInDays: 30687 , radiusInMiles: 15759.2, moonCount: 27, ringCount: 13, planetType: PlanetType.iceGiant.rawValue, distanceFromSun: 19.8),
        
        Planet(planetName: "Neptune", namesake: "Roman god of the sea", orderNumber: PlanetOrder.neptune.rawValue, dayLengthInEarthDays: 0.66, yearLengthInDays: 60190, radiusInMiles: 15299.4 , moonCount: 14, ringCount: 5, planetType: PlanetType.iceGiant.rawValue, distanceFromSun: 30.1)
    ]
}
