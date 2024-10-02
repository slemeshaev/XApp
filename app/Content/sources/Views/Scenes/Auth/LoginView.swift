//
//  LoginView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 02.10.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            VStack {
                Image("x.logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                
                VStack {
                    StyledTextField(text: $email, placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .padding()
                        .foregroundStyle(Color(.white))
                    
                    StyledTextField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .padding()
                        .foregroundStyle(Color(.white))
                }
                
                Spacer()
            }
        }
        .background(Color(.black))
    }
}

#Preview {
    LoginView()
}
