//
//  PlanetController.swift
//  SolarSystem
//
//  Created by Colby Mehmen on 3/28/23.
//

import Foundation

class PlanetController {
    let shared = PlanetController()
    
    let allplanets = PlanetInfo.allPlanetInfo()
    
    func planet(planet: PlanetInfo) -> Planet {
        return planet.planet()
    }
}
