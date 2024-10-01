//
//  MessageInputView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 28.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Send")
            })
        }
        .padding()
    }
}

#Preview {
    MessageInputView(messageText: .constant("Message..."))
}
