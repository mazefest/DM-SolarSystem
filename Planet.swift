//
//  Planet.swift
//  SolarSystem
//
//  Created by Colby Mehmen on 3/28/23.
//

import Foundation

extension Int {
    var suffix: String {
        let value = self % 10
        if value == 1 {
            return "st"
        } else if value == 2 {
            return "nd"
        } else if value == 3 {
            return "rd"
        } else {
            return "th"
        }
    }
}
//
//enum PlanetDetail: CaseIterable {
//    case dayLength
//    case yearLength
//    case radius
//    case moonCount
//    case ringCount
//    case plantType
//    case fromSunDistane
//    //case galaxy
//
//    func title(for planet: PlanetInfo) -> String {
//        switch self {
//        case .dayLength:
//            return "Day Length"
//        case .yearLength:
//            return "Yeah Length"
//        case .radius:
//            return "Moon Cout"
//        case .moonCount:
//            return ""
//        case .ringCount:
//            return "Day Length"
//        case .plantType:
//            return "Day Length"
//        case .fromSunDistane:
//            return "Day Length"
//
////        case .galaxy:
////            return planet.galaxy
//        }
//    }
//
//    func detail(for planet: Planet) -> String {
//        switch self {
//        case .dayLength:
//            return planet.dayLengthInEarthDays.description
//        case .yearLength:
//            return planet.yearLengthInDays.description
//        case .radius:
//            return planet.radiusInMiles.description
//        case .moonCount:
//            return planet.moonCount.description
//        case .ringCount:
//            return planet.ringCount.description
//        case .plantType:
//            return planet.planetType.rawValue
//        case .fromSunDistane:
//            return planet.distanceFromSun.description
////        case .galaxy:
////            return planet.galaxy
//        }
//    }
    
//    var imageName: String {
//        return ""
//    }
//
//    var title: String {
//        switch self {
//        case .dayLength:
//
//        case .yearLength:
//
//        case .radius:
//
//        case .moonCount:
//
//        case .ringCount:
//
//        case .plantType:
//
//        case .fromSunDistane:
//
//        case .galaxy:
//
//        }
//    }
//
//    var detail: String {
//        return
//    }
//}
//
//enum PlanetInfo: String, CaseIterable {
//    case mercury
//    case venus
//    case earth
//    case mars
//    case jupiter
//    case saturn
//    case uranus
//    case neptune
//
//    var name: String {
//        return self.rawValue
//    }
//
//    var namesake: String {
//        switch self {
//        case .mercury:
//            return "Roman god of speed"
//        case .venus:
//            return "Roman goddess of love"
//        case .earth:
//            return "The ground"
//        case .mars:
//            return "Roman god of war"
//        case .jupiter:
//            return "King of the Roman gods"
//        case .saturn:
//            return "Father of Jupiter"
//        case .uranus:
//            return "Greek god of the sky"
//        case .neptune:
//            return "Roman god of the sea"
//        }
//    }
//
//    var imageName: String {
//        return self.rawValue
//    }
//
//    var orderNumber: Int {
//        switch self {
//        case .mercury:
//            return 1
//        case .venus:
//            return 2
//        case .earth:
//            return 3
//        case .mars:
//            return 4
//        case .jupiter:
//            return 5
//        case .saturn:
//            return 6
//        case .uranus:
//            return 7
//        case .neptune:
//            return 8
//        }
//
//    }
//
//    var dayLengthinEarthDays: Double {
//        switch self {
//        case .mercury:
//            return 59
//        case .venus:
//            return 243
//        case .earth:
//            return 1
//        case .mars:
//            return 1.025
//        case .jupiter:
//            return 0.416
//        case .saturn:
//            return 0.445
//        case .uranus:
//            return 0.70
//        case .neptune:
//            return 0.66
//        }
//
//    }
//
//    var yearLengthInEarthDays: Int {
//        switch self {
//        case .mercury:
//            return 88
//        case .venus:
//            return 225
//        case .earth:
//            return 365
//        case .mars:
//            return 687
//        case .jupiter:
//            return 4333
//        case .saturn:
//            return 10759
//        case .uranus:
//            return 30687
//        case .neptune:
//            return 60190
//        }
//    }
//
//    var radiusInMiles: Double {
//        switch self {
//        case .mercury:
//            return 1516
//        case .venus:
//            return 7520
//        case .earth:
//            return 3959
//        case .mars:
//            return 2106
//        case .jupiter:
//            return 43440.7
//        case .saturn:
//            return 36183.7
//        case .uranus:
//            return 15759.2
//        case .neptune:
//            return 15299.4
//        }
//    }
//
//    var moonCount: Int {
//        switch self {
//        case .mercury, .venus:
//            return 0
//        case .earth:
//            return 1
//        case .mars:
//            return 2
//        case .jupiter:
//            return 79
//        case .saturn:
//            return 62
//        case .uranus:
//            return 27
//        case .neptune:
//            return 14
//        }
//    }
//
//    var ringCount: Int {
//        switch self {
//        case .mercury, .venus, .earth, .mars:
//            return 0
//        case .jupiter:
//            return 4
//        case .saturn:
//            return 8
//        case .uranus:
//            return 13
//        case .neptune:
//            return 5
//        }
//    }
//
//    var planetType: PlanetType {
//        switch self {
//        case .mercury, .venus, .earth, .mars:
//            return .terrestrial
//        case .jupiter, .saturn:
//            return .gasGiant
//        case .uranus, .neptune:
//            return .iceGiant
//        }
//    }
//
//    var distanceFromSun: Double {
//        switch self {
//        case .mercury:
//            return 0.4
//        case .venus:
//            return 0.7
//        case .earth:
//            return 1
//        case .mars:
//            return 1.5
//        case .jupiter:
//            return 5.2
//        case .saturn:
//            return  9.5
//        case .uranus:
//            return 19.8
//        case .neptune:
//            return  30.1
//        }
//    }
//
//    func planet() -> Planet {
//        return .init(
//            planetName: self.name,
//            namesake: self.namesake,
//            orderNumber: self.orderNumber,
//            dayLengthInEarthDays: self.dayLengthinEarthDays,
//            yearLengthInDays: self.yearLengthInEarthDays,
//            radiusInMiles: self.radiusInMiles,
//            moonCount: self.moonCount,
//            ringCount: self.ringCount,
//            planetType: self.planetType,
//            distanceFromSun: self.distanceFromSun
//        )
//    }
//
//    static func allPlanetInfo() -> [Planet] {
//        return Self.allCases.map({$0.planet()})
//    }
//
//}

enum PlanetType: String {
    case iceGiant = "Ice Giant"
    case gasGiant = "Gas Giant"
    case terrestrial = "Terrestrial"
}

enum PlanetOrder: Int {
    case mercury = 1
    case venus = 2
    case earth = 3
    case mars = 4
    case jupiter = 5
    case saturn  = 6
    case uranus = 7
    case neptune = 8
    
    var suffix: String {
        self.rawValue.suffix
    }
}

class Planet {
    var planetName: String
    var namesake: String
    var imageName: String
    var orderNumber: Int
    var dayLengthInEarthDays: Double
    var yearLengthInDays: Int
    var radiusInMiles: Double
    var moonCount: Int
    var ringCount: Int
    var planetType: String
    var distanceFromSun: Double
    var favorite: Bool
    
    init(planetName: String, namesake: String, orderNumber: Int,  dayLengthInEarthDays: Double, yearLengthInDays: Int, radiusInMiles: Double, moonCount: Int, ringCount: Int, planetType: String, distanceFromSun: Double) {
        self.planetName = planetName
        self.namesake = namesake
        self.imageName = planetName.lowercased()
        self.orderNumber = orderNumber
        self.dayLengthInEarthDays = dayLengthInEarthDays
        self.yearLengthInDays = yearLengthInDays
        self.radiusInMiles = radiusInMiles
        self.moonCount = moonCount
        self.ringCount = ringCount
        self.planetType = planetType
        self.distanceFromSun = distanceFromSun
        self.favorite = false
    }
}
