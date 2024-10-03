//
//  SecureTextField.swift
//  X
//
//  Created by Stanislav Lemeshaev on 03.10.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct SecureTextField: View {
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundStyle(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40.0)
            }
            
            HStack(spacing: 16) {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.white))
                
                SecureField("Password", text: $text)
            }
        }
    }
}

#Preview {
    SecureTextField(text: .constant(""), placeholder: Text("Password"))
}
