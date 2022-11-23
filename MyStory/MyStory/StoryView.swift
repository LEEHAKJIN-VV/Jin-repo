//
//  StoryView.swift
//  MyStory
//
//  Created by 이학진 on 2022/11/21.
//

import SwiftUI

struct StoryView: View {
    var story: Story
    var pageNumber: Int
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(story.content)
                .font(.largeTitle)
            
            Spacer()
            
            ForEach(story.selects, id: \.self) { select in
                NavigationLink(destination: StoryView(story: mylist[select.next], pageNumber: select.next)) {
                    Text(select.title)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(10)
                }
            }
        }
        .navigationTitle("\(pageNumber)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: mylist[1], pageNumber: 1)
    }
}
