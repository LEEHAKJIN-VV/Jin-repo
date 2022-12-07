//
//  SymbolList.swift
//  SymbolDemo
//
//  Created by 이학진 on 2022/11/30.
//

import SwiftUI

struct SymbolList: View {
    @Binding var symbols: [Symbol]
    @Binding var isShowingSheet: Bool
    
    var notRegisteredSymbol: [Symbol] {
        return symbols.filter {!$0.isAdd}
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                GridRow {
                    ForEach(notRegisteredSymbol.indices, id: \.self) { idx in
                        Button(action: {
                            addSymbol(name: notRegisteredSymbol[idx].name)
                            isShowingSheet.toggle()
                            
                        }, label: {
                            Image(systemName: notRegisteredSymbol[idx].name)
                                .font(.largeTitle)
                        })
                        
                    }
                }
            }
        }
        .padding()
    }
    
    func addSymbol(name: String) {
        var index: Int = 0
        for (idx, sym) in symbols.enumerated() {
            if sym.name == name {
                index = idx
            }
        }
        symbols[index].isAdd.toggle()
    }
}

struct SymbolList_Previews: PreviewProvider {
    @State private static var symbol = [Symbol(name: "tshirt")]
    @State private static var isShowingSheet: Bool = false
    static var previews: some View {
        SymbolList(symbols: $symbol, isShowingSheet: $isShowingSheet)
    }
}
