//
//  Message.swift
//  X
//
//  Created by Stanislav Lemeshaev on 30.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "avatar_2", messageText: "Hey what's up?", isCurrentUser: false),
    .init(id: 1, imageName: "avatar_3", messageText: "Hey I'm doing well, thanks. What about you?", isCurrentUser: true),
    .init(id: 2, imageName: "avatar_3", messageText: "Cool. What are you doing?", isCurrentUser: true),
    .init(id: 3, imageName: "avatar_2", messageText: "I'm working. And you?", isCurrentUser: false),
    .init(id: 4, imageName: "avatar_2", messageText: "Mee too.", isCurrentUser: false),
    .init(id: 5, imageName: "avatar_3", messageText: "I like you...", isCurrentUser: true),
]
