//
//  Planet.swift
//  SolarSystem
//
//  Created by Colby Mehmen on 3/28/23.
//

import Foundation

enum PlanetInfo: String, CaseIterable {
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    var name: String {
        return self.rawValue
    }
    
    var namesake: String {
        switch self {
        case .mercury:
            return "Roman god of speed"
        case .venus:
            return "Roman goddess of love"
        case .earth:
            return "The ground"
        case .mars:
            return "Roman god of war"
        case .jupiter:
            return "King of the Roman gods"
        case .saturn:
            return "Father of Jupiter"
        case .uranus:
            return "Greek god of the sky"
        case .neptune:
            return "Roman god of the sea"
        }
    }
    
    var imageName: String {
        return self.rawValue
    }
    
    var orderNumber: Int {
        switch self {
        case .mercury:
            return 1
        case .venus:
            return 2
        case .earth:
            return 3
        case .mars:
            return 4
        case .jupiter:
            return 5
        case .saturn:
            return 6
        case .uranus:
            return 7
        case .neptune:
            return 8
        }
        
    }
    
    var dayLengthinEarthDays: Double {
        switch self {
        case .mercury:
            return 59
        case .venus:
            return 243
        case .earth:
            return 1
        case .mars:
            return 1.025
        case .jupiter:
            return 0.416
        case .saturn:
            return 0.445
        case .uranus:
            return 0.70
        case .neptune:
            return 0.66
        }
        
    }
    
    var yearLengthInEarthDays: Int {
        switch self {
        case .mercury:
            return 88
        case .venus:
            return 225
        case .earth:
            return 365
        case .mars:
            return 687
        case .jupiter:
            return 4333
        case .saturn:
            return 10759
        case .uranus:
            return 30687
        case .neptune:
            return 60190
        }
    }
    
    var radiusInMiles: Double {
        switch self {
        case .mercury:
            return 1516
        case .venus:
            return 7520
        case .earth:
            return 3959
        case .mars:
            return 2106
        case .jupiter:
            return 43440.7
        case .saturn:
            return 36183.7
        case .uranus:
            return 15759.2
        case .neptune:
            return 15299.4
        }
    }
    
    var moonCount: Int {
        switch self {
        case .mercury, .venus:
            return 0
        case .earth:
            return 1
        case .mars:
            return 2
        case .jupiter:
            return 79
        case .saturn:
            return 62
        case .uranus:
            return 27
        case .neptune:
            return 14
        }
    }
    
    var ringCount: Int {
        switch self {
        case .mercury, .venus, .earth, .mars:
            return 0
        case .jupiter:
            return 4
        case .saturn:
            return 8
        case .uranus:
            return 13
        case .neptune:
            return 5
        }
    }
    
    var planetType: PlanetType {
        switch self {
        case .mercury, .venus, .earth, .mars:
            return .terrestrial
        case .jupiter, .saturn:
            return .gasGiant
        case .uranus, .neptune:
            return .iceGiant
        }
    }
    
    var distanceFromSun: Double {
        switch self {
        case .mercury:
            return 0.4
        case .venus:
            return 0.7
        case .earth:
            return 1
        case .mars:
            return 1.5
        case .jupiter:
            return 5.2
        case .saturn:
            return  9.5
        case .uranus:
            return 19.8
        case .neptune:
            return  30.1
        }
    }
    
    func planet() -> Planet {
        return .init(
            planetName: self.name,
            namesake: self.namesake,
            orderNumber: self.orderNumber,
            dayLengthInEarthDays: self.dayLengthinEarthDays,
            yearLengthInDays: self.yearLengthInEarthDays,
            radiusInMiles: self.radiusInMiles,
            moonCount: self.moonCount,
            ringCount: self.ringCount,
            planetType: self.planetType,
            distanceFromSun: self.distanceFromSun
        )
    }

    static func allPlanetInfo() -> [Planet] {
        return Self.allCases.map({$0.planet()})
    }

}

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
    var planetType: PlanetType
    var distanceFromSun: Double
    
    init(planetName: String, namesake: String, orderNumber: Int,  dayLengthInEarthDays: Double, yearLengthInDays: Int, radiusInMiles: Double, moonCount: Int, ringCount: Int, planetType: PlanetType, distanceFromSun: Double) {
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
    }
}

//Create a new Xcode project titled Solar System.
//
//Add a new Swift file titled Planet and define a new Planet class
//
//Add your properties choosing the data types carefully:
//
//name
//
//planetDescription
//
//imageName
//
//orderNumber
//
//dayLengthInDays
//
//yearLengthInDays
//
//radiusInMiles
//
//moonCount
//
//ringCount
//
//planetType
//
//distanceFromSun
//
//Note: dayLengthInDays, radiusInMiles, distanceFromSun will have a decimal point in their values.
//
//Create your memberwise initializer that takes the parameters for each property. When setting the value for imageName, we can just use the lowercased version of the plant name, ex: self.imageName = name.lowercased()
