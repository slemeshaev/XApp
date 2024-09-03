//
//  ChatView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 28.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(MOCK_MESSAGES) { message in
                    MessageView(message: message)
                }
            }
        }.padding(.top)
        
        MessageInputView(messageText: $messageText)
            .padding()
    }
}

#Preview {
    ChatView()
}
