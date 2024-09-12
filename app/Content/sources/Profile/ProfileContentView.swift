//
//  ProfileContentView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 03.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ProfileContentView: View {
    @State var selectedFilter: PostFilterOptions = .posts
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
            }
            .navigationTitle("atokareva")
        }
    }
}

#Preview {
    ProfileContentView()
}
