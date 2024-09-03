//
//  ConversationsView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 26.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessage = false
    @State var isChatVisible = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing, content: {
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
                    isShowingNewMessage.toggle()
                }, label: {
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
                    isPresented: $isShowingNewMessage,
                    content: {
                        NewMessageView(
                            isShow: $isShowingNewMessage,
                            isStartChat: $isChatVisible
                        )
                    }
                )
            })
            .navigationDestination(isPresented: $isChatVisible) {
                ChatView()
            }
        }
    }
}

#Preview {
    ConversationsView()
}
