//
//  SearchView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 25.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        VStack {
            SearchBar(searchText: $searchText)
            
            VStack(alignment: .leading, content: {
                ScrollView {
                    VStack {
                        ForEach(0..<20) { _ in
                            UserCell()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                        }
                    }
                    .padding()
                }
            })
        }
    }
}

#Preview {
    SearchView()
}
