//
//  NewPostView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 13.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct NewPostView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("avatar_3")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    Text("What's news?")
                        .foregroundStyle(Color(.gray))
                    
                    Spacer()
                }
                .padding()
                .navigationBarItems(
                    leading: Button(action: { isPresented.toggle() }, label: {
                        Text("Cancel")
                            .foregroundStyle(Color(.blue))
                    }), trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Publish")
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    })
                )
                Spacer()
            }
        }
    }
}

#Preview {
    NewPostView(isPresented: .constant(true))
}
