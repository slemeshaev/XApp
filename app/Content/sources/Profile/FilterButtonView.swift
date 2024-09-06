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
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ForEach(PostFilterOptions.allCases, id: \.self) { option in
                    Text(option.title)
                }
            }
        }
    }
}

#Preview {
    FilterButtonView()
}
