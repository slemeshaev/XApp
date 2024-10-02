//
//  StyledTextField.swift
//  X
//
//  Created by Stanislav Lemeshaev on 02.10.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct StyledTextField: View {
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
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.white))
                
                TextField("Email", text: $text)
            }
        }
    }
}

#Preview {
    StyledTextField(text: .constant(""), placeholder: Text("Email"))
}
