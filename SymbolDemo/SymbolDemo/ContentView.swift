//
//  ContentView.swift
//  SymbolDemo
//
//  Created by 이학진 on 2022/11/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            SymbolsView()
                
        }
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
