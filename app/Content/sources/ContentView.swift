//
//  ContentView.swift
//  X
//
//  Created by Stanislav Lemeshaev on 21.08.2024.
//  Copyright © 2024 slemeshaev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "doc.plaintext")
                        Text("Feed")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                ConversationsView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Messages")
                    }
            }
            .navigationBarTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
