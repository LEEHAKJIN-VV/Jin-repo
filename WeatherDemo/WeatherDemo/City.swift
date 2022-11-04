//
//  Weather.swift
//  WeatherDemo
//
//  Created by 이학진 on 2022/11/03.
//

import SwiftUI

var citys: [City] = [
    City(name: "서울", weathers: [
        Weather(hour: "8AM", temperature: "63°", condition: .sun),
        Weather(hour: "9AM", temperature: "63°", condition: .suncloud),
        Weather(hour: "10AM", temperature: "64°", condition: .sun),
        Weather(hour: "11AM", temperature: "61°", condition: .cloud),
        Weather(hour: "12AM", temperature: "62°", condition: .rain)
    ])
]

struct City: Identifiable {
    var id = UUID()
    var name: String
    var weathers: [Weather]
}

struct Weather: Identifiable {
    var id = UUID()
    var hour: String // (0 ~ 24)
    var temperature: String
    var condition: Condition
    var image: Image {
        switch condition {
        case .rain:
            return Image(systemName: "cloud.rain.fill")
        case .sun:
            return Image(systemName: "sun.max.fill")
        case .suncloud:
            return Image(systemName: "cloud.sun.fill")
        case .cloud:
            return Image(systemName: "cloud.fill")
        }
    }
}

enum Condition {
    case rain
    case sun
    case suncloud
    case cloud
}
