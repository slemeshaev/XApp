//
//  UserCell.swift
//  X
//
//  Created by Stanislav Lemeshaev on 25.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("avatar_2")
                .resizable()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .scaledToFill()
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text("atokareva")
                    .font(.system(size: 14, weight: .semibold))
                Text("Anna Tokareva")
                    .font(.system(size: 14, weight: .regular))
            }
        }
    }
}

#Preview {
    UserCell()
}
