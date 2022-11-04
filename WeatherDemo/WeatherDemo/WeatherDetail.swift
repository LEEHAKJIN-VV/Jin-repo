//
//  WeatherDetail.swift
//  WeatherDemo
//
//  Created by 이학진 on 2022/11/03.
//

import SwiftUI

struct WeatherDetail: View {
    var weather: Weather
    var body: some View {
        VStack(spacing: 16) {
            Text(weather.hour)
                .font(.title2)
                .foregroundColor(.white)
            
            weather.image
                .renderingMode(.original)
                .font(.title)
            
            Text(weather.temperature)
                .font(.title2)
                .foregroundColor(.white)
        }
        .background(.gray)
    }
}

struct WeatherDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetail(weather: citys[0].weathers[0])
    }
}
