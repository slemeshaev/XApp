//
//  CoversationCell.swift
//  X
//
//  Created by Stanislav Lemeshaev on 26.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct CoversationCell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("avatar_2")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .scaledToFill()
                    .clipped()
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Anna Tokareva")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam, delectus, ab. Id, maiores aspernatur vitae.")
                        .font(.system(size: 14, weight: .regular))
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                }
                .padding(.trailing)
            }
            
            Divider()
        }
    }
}

#Preview {
    CoversationCell()
}
