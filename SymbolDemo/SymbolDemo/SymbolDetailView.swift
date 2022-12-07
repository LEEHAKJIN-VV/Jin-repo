//
//  SymbolDetailView.swift
//  SymbolDemo
//
//  Created by 이학진 on 2022/11/30.
//

import SwiftUI

struct SymbolDetailView: View {
    var symbol: Symbol
    var body: some View {
        VStack {
            Text(symbol.name)
                .font(.title)
            
            Image(systemName: symbol.name)
                //.font(.largeTitle)
                .font(.system(size: 240))
        }
    }
}

struct SymbolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolDetailView(symbol: Symbol(name: "car.fill"))
    }
}
