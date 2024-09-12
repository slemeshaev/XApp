//
//  FilterButtonView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 04.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

enum PostFilterOptions: Int, CaseIterable {
    case posts
    case replies
    case likes
    
    var title: String {
        switch self {
        case .posts:
            return "Posts"
        case .replies:
            return "Posts & Replies"
        case .likes:
            return "Likes"
        }
    }
}

struct FilterButtonView: View {
    @Binding var selectedOption: PostFilterOptions
    @State private var isVisible = true
    
    private let underlineWidth =  CGFloat(UIScreen.main.bounds.width) / CGFloat(PostFilterOptions.allCases.count)
    
    private var padding: CGFloat {
        let rawValue = CGFloat(selectedOption.rawValue)
        let count = CGFloat(PostFilterOptions.allCases.count)
        return ((UIScreen.main.bounds.width / count) * rawValue) + 16
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ForEach(PostFilterOptions.allCases, id: \.self) { option in
                    Button(action: {
                        self.selectedOption = option
                        isVisible.toggle()
                    }, label: {
                        Text(option.title)
                            .frame(width: underlineWidth - 8)
                            .transition(.slide)
                    })
                }
            }
            
            Rectangle()
                .frame(width: underlineWidth - 32, height: 3, alignment: .center)
                .foregroundStyle(Color(.blue))
                .padding(.leading, padding)
                .animation(.spring, value: isVisible)
        }
    }
}

#Preview {
    FilterButtonView(selectedOption: .constant(.posts))
}
