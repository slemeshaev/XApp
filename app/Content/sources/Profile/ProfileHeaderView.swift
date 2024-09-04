//
//  ProfileHeaderView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 04.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            Image("avatar_2")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6, x: 0.0, y: 0.0)
            
            Text("Anna Tokareva")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@atokareva")
                .font(.subheadline)
                .foregroundStyle(Color(.gray))
            
            Text("Billinaire by day, dark night by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack(spacing: 40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16)).bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundStyle(Color(.gray))
                }
                
                VStack {
                    Text("34")
                        .font(.system(size: 16)).bold()
                    
                    Text("Following")
                        .font(.footnote)
                        .foregroundStyle(Color(.gray))
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
