//
//  ContentView.swift
//  MyStory
//
//  Created by 이학진 on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            StoryView(story: mylist[1], pageNumber: 1)
            .navigationTitle("What IF")
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
