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
        ScrollView {
            SearchBar(searchText: $searchText)
            
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    HStack { Spacer () }
                    NavigationLink(
                        destination: ProfileContentView(),
                        label: {
                            SearchCell()
                        })
                }
            }.padding(.leading)
        }
    }
}

#Preview {
    SearchView()
}
