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
                    .padding(.bottom, 64)
                
                VStack(spacing: 24) {
                    StyledTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .foregroundStyle(Color(.white))
                    
                    SecureTextField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .foregroundStyle(Color(.white))
                }
                .padding(.horizontal, 32)
                
                HStack {
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .bold()
                            .foregroundStyle(Color(.white))
                            .padding(.top, 16)
                            .padding(.trailing, 32)
                    }
                }
                
                Button(action: {}) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundStyle(Color(.blue))
                        .frame(width: 360, height: 50)
                        .background(Color(.white))
                        .clipShape(Capsule())
                        .padding()
                }
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign Up")
                        .font(.system(size: 14, weight: .semibold))
                }
                .foregroundStyle(Color(.white))
            }
        }
        .background(Color(.black))
    }
}

#Preview {
    LoginView()
}
