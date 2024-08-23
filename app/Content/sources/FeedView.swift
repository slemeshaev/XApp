//
//  FeedView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 23.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            ScrollView {
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 24)
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
    FeedView()
}
