//
//  SearchBar.swift
//  X
//
//  Created by Stanislav Lemeshaev on 25.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(alignment: .center) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color(.gray))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                }
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    SearchBar(searchText: .constant("Search"))
}
