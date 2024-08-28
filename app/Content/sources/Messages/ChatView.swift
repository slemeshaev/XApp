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
                ForEach(0..<15) { _ in
                    Text("Chat bubble")
                }
            }
        }
        
        MessageInputView(messageText: $messageText)
            .padding()
    }
}

#Preview {
    ChatView()
}
