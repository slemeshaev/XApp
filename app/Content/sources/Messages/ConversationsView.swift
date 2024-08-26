//
//  ConversationsView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 26.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ConversationsView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        CoversationCell()
                    }
                }
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
        })
    }
}

#Preview {
    ConversationsView()
}
