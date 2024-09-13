//
//  FeedCell.swift
//  X
//
//  Created by Stanislav Lemeshaev on 24.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("avatar_1")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Maria Zvereva")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@mzvereva · 2w")
                            .foregroundStyle(Color(.gray))
                    }
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex ipsum, tempore qui minus cum.")
                }
            }
            .padding(.bottom)
            .padding(.trailing)
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
            }
            .foregroundStyle(Color(.gray))
            .padding(.horizontal)
            
            Divider()
        }
    }
}

#Preview {
    FeedCell()
}
