//
//  ProfileContentView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 03.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ProfileContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
            }
            .navigationTitle("atokareva")
        }
    }
}

#Preview {
    ProfileContentView()
}
