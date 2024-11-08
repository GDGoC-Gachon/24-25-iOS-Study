//
//  SwiftUIView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 11/8/24.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack {
            Color.surfacePrimary.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 0) {
                    // Header
                    HStack(spacing: 0) {
                        Image("Profile")
                            .padding(.trailing, 8)
                        
                        Text("Your Library")
                            .font(Font.customFont(.title4))
                            .foregroundColor(Color.textPrimary)
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.textPrimary)
                        
                        Spacer().frame(width: 12)
                        
                        Image(systemName: "plus")
                            .foregroundColor(Color.textPrimary)
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
