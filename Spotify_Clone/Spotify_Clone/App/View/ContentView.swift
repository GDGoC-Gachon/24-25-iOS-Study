//
//  ContentView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = .black
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomepageView()
                .tabItem {
                  VStack {
                    selectedTab == 0 ? Image("HomeOn") : Image("HomeOff")
                  }
                }
                .tag(0)
            
            Text("2")
                .tabItem {
                  VStack {
                      selectedTab == 0 ? Image("SearchOn") : Image("SearchOff")
                  }
                }
                .tag(1)
            
            Text("3")
                .tabItem {
                    VStack {
                        selectedTab == 0 ? Image("LibraryOn") : Image("LibraryOff")
                    }
                }
                .tag(2)
        }
        .accentColor(Color.iconPrimary)
    }
}

#Preview {
    ContentView()
}
