//
//  TextArea.swift
//  X
//
//  Created by Stanislav Lemeshaev on 01.10.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            TextEditor(text: $text)
                .padding(4)
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundStyle(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
        }.font(.body)
    }
}

#Preview {
    TextArea(text: .constant(""), placeholder: "Caption here...")
}
