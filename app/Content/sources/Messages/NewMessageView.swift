//
//  NewMessageView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 01.09.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    var body: some View {
        VStack {
            SearchBar(searchText: $searchText)
            
            VStack(alignment: .leading, content: {
                ScrollView {
                    VStack {
                        ForEach(0..<20) { _ in
                            Button(action: {
                                show.toggle()
                                startChat.toggle()
                            }, label: {
                                UserCell()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 8)
                            })
                        }
                    }
                    .padding()
                }
            })
        }
    }
}

#Preview {
    NewMessageView(show: .constant(true), startChat: .constant(true))
}
