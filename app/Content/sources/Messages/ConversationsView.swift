//
//  ConversationsView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 26.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            NavigationLink(isActive: $showChat) {
                ChatView()
            } label: {}
            
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
                            }
                        )
                    }
                }
            }
            
            Button(action: {
                isShowingNewMessageView.toggle()
            },
                   label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundStyle(Color(.white))
            .clipShape(Circle())
            .padding()
            .sheet(
                isPresented: $isShowingNewMessageView,
                content: {
                    NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
                }
            )
        })
    }
}

#Preview {
    ConversationsView()
}
