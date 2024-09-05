//
//  ProfileButtonView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 04.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ProfileButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color(.blue))
                    .foregroundStyle(Color(.white))
            })
            .clipShape(RoundedRectangle(cornerRadius: 20))
        } else {
            HStack {
                Button(action: {}, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color(.blue))
                        .foregroundStyle(Color(.white))
                })
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color(.purple))
                        .foregroundStyle(Color(.white))
                })
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
    }
}

#Preview {
    ProfileButtonView(isCurrentUser: false)
}
