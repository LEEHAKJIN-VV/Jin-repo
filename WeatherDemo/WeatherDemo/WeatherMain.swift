//
//  WeatherMain.swift
//  WeatherDemo
//
//  Created by 이학진 on 2022/11/03.
//

import SwiftUI


struct WeatherMain: View {
    var city: City
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack {
                    Text(city.name)
                    Text("63°")
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                    Text("맑음")
                    
                    HStack {
                        Text("H:68°")
                        Text("L:42°")
                    }
                }
                .font(.title)
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            
            Spacer()
            
            HStack(alignment: .top, spacing: 13) {
                ForEach(city.weathers) { weather in
                    WeatherDetail(weather: weather)
                }
                Spacer()
            }
        }
        .frame(maxWidth: 400, maxHeight: 300)
        .padding()
        .background(.gray)
    }
}

struct WeatherMain_Previews: PreviewProvider {
    static var previews: some View {
        WeatherMain(city: citys[0])
    }
}
