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
            
            ScrollView {
                VStack {
                    ForEach(0..<19) { _ in
                        Text("Add Users here...")
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
