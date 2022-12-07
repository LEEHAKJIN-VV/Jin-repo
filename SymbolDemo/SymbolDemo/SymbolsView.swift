//
//  SymbolsView.swift
//  SymbolDemo
//
//  Created by 이학진 on 2022/11/30.
//

import SwiftUI

struct SymbolsView: View {
    @ObservedObject var data =  SymbolData()
    @State private var isShowingAdd: Bool = false
    
    @State private var value:Int = 3 // Stepper Value
    @State private var isEditMode: Bool = false
    
    var registerdSymbol: [Symbol] {
        return data.symbols.filter {$0.isAdd}
    }
    
    var mySymbols: [Symbol] = []
    
    
    var columns: [GridItem] {
        var tmpColumns: [GridItem] = []
        for _ in 0..<value {
            tmpColumns.append(GridItem(.flexible()))
        }
        return tmpColumns
    }
    
    var body: some View {
        ScrollView {
            Stepper {
                Text("\(value)Columns")
            } onIncrement: {
                value += 1
            } onDecrement: {
                value -= 1
            }
            .opacity(isEditMode ? 1 : 0)
            .padding()
            
            
            LazyVGrid(columns: columns) {
                GridRow {
                    ForEach(registerdSymbol, id: \.self) { symbol in
                        NavigationLink(value: symbol) {
                            ZStack {
                                Image(systemName: symbol.name)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                Button(action: {
                                    deleteSymbol(name: symbol.name)
                                }, label: {
                                    Image(systemName: "xmark.rectangle")
                                        .renderingMode(.original)
                                        .opacity(isEditMode ? 1 : 0)
                                })
                                .offset(x: 30, y: -20)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Symbol.self) { symbol in
                SymbolDetailView(symbol: symbol)
            }
            .navigationTitle("My Symbols")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isShowingAdd.toggle()
                    }, label: {
                        Text("Add")
                    })
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isEditMode.toggle()
                    }, label: {
                        Text(isEditMode ? "Done" : "Edit")
                    })
                }
            }
        }
        .sheet(isPresented: $isShowingAdd) {
            SymbolList(symbols: $data.symbols, isShowingSheet: $isShowingAdd)
        }
    }
    
    func deleteSymbol(name: String) {
        var index: Int = 0
        for (idx, sym) in data.symbols.enumerated() {
            if sym.name == name {
                index = idx
            }
        }
        data.symbols[index].isAdd.toggle()
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsView()
    }
}
