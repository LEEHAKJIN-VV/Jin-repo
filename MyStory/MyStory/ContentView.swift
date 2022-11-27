//
//  ContentView.swift
//  MyStory
//
//  Created by 이학진 on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    @State private var path: [Story] = []
    var body: some View {
        NavigationStack(path: $path) {
            StoryView(story: mylist[1])
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
