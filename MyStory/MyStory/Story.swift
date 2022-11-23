//
//  Story.swift
//  MyStory
//
//  Created by 이학진 on 2022/11/21.
//

import Foundation

struct Story: Hashable {
    var id: Int // story id
    var content: String    
    var selects: [Select]
}

struct Select: Hashable {
    var title: String
    var next: Int
}

var mylist: [Story] = [
    
    Story(id: 0,
          content:"다시 시작 합니다",
          selects: [
            Select(title: "1번으로 가기", next: 1),
            Select(title: "2번으로 가기", next: 2),
            Select(title: "3번으로 가기", next: 3)
          ]
         ),
    Story(id: 1,
          content:"1번 페이지 입니다",
          selects: [
            Select(title: "2번으로가기", next: 2),
            Select(title: "3번으로가기", next: 3),
            Select(title: "4번으로가기", next: 4)
          ]
         ),
    Story(id: 2,
          content:"2번 페이지 입니다",
          selects: [
            Select(title: "3번으로가기", next: 3),
            Select(title: "4번으로가기", next: 4),
            Select(title: "5번으로가기", next: 5)
          ]
         ),
    Story(id: 3,
          content:"3번 페이지 입니다",
          selects: [
            Select(title: "4번으로가기", next: 4),
            Select(title: "5번으로가기", next: 5),
            Select(title: "6번으로가기", next: 6)
          ]
         ),
    Story(id: 4,
          content:"4번 페이지 입니다",
          selects: [
            Select(title: "5번으로가기", next: 5),
            Select(title: "7번으로가기", next: 7),
            Select(title: "8번으로가기", next: 8)
          ]
         ),
    Story(id: 5,
          content:"5번 페이지 입니다",
          selects: [
            Select(title: "6번으로가기", next: 6),
            Select(title: "7번으로가기", next: 7)
          ]
         ),
    Story(id: 6,
          content:"6번 페이지 입니다",
          selects: [
            Select(title: "8번으로가기", next: 8),
            Select(title: "10번으로가기", next: 10),
            Select(title: "11번으로가기", next: 11)
          ]
         ),
    Story(id: 7,
          content:"7번 페이지 입니다",
          selects: [
            Select(title: "12번으로가기", next: 12),
            Select(title: "11번으로가기", next: 11),
            Select(title: "9번으로가기", next: 9)
          ]
         ),
    Story(id: 8,
          content:"8번 페이지 입니다",
          selects: [
            Select(title: "5번으로가기", next: 5),
            Select(title: "9번으로가기", next: 9),
            Select(title: "10번으로가기", next: 10)
          ]
         ),
    Story(id: 9,
          content:"9번 페이지 입니다",
          selects: [
            Select(title: "10번으로가기", next: 10),
            Select(title: "11번으로가기", next: 11),
            Select(title: "12번으로가기", next: 12)
          ]
         ),
    Story(id: 10,
          content:"10번 페이지 입니다",
          selects: [
            Select(title: "8번으로가기", next: 8),
            Select(title: "7번으로가기", next: 7),
            Select(title: "6번으로가기", next: 6)
          ]
         ),
    Story(id: 11,
          content:"11번 페이지 입니다",
          selects: [
            Select(title: "9번으로가기", next: 9),
            Select(title: "12번으로가기", next: 12),
          ]
         ),
    Story(id: 12,
          content:"12번 페이지 입니다",
          selects: [
            Select(title: "끝", next: 0)
          ]
         )
    ]
