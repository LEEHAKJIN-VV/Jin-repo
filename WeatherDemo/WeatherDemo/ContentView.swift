//
//  ContentView.swift
//  WeatherDemo
//
//  Created by 이학진 on 2022/11/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WeatherMain(city: citys[0])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
