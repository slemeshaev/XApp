//
//  MessageView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 30.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundStyle(Color.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray6))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundStyle(Color.black)
                }.padding(.horizontal)
                Spacer()
            }
        }
    }
}

#Preview {
    MessageView(message: MOCK_MESSAGES[0])
}
