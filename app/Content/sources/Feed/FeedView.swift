//
//  FeedView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 23.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewPostView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        FeedCell()
                    }
                }
            }
            
            Button(action: { isShowingNewPostView.toggle() }, label: {
                Image(systemName: "pencil")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundStyle(Color(.white))
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $isShowingNewPostView) {
                NewPostView(isPresented: $isShowingNewPostView)
            }
        })
    }
}

#Preview {
    FeedView()
}
