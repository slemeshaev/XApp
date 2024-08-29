//
//  ChatBubble.swift
//  X
//
//  Created by Stanislav Lemeshaev on 29.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromCurrentUser: Bool
    
    // MARK: - Shape
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [
                .topLeft,
                .topRight,
                isFromCurrentUser ? .bottomLeft : .bottomRight
            ],
            cornerRadii: CGSize(width: 16.0, height: 16.0)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubble(isFromCurrentUser: false)
}
