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
                
                HStack(spacing: 16) {
                    ForEach(["Playlists", "Podcasts", "Albums", "Artists"], id: \.self) { title in
                        Text(title)
                            .font(Font.customFont(.body7_regular))
                            .foregroundColor(Color.textPrimary)
                            .frame(width: getWidth(for: title), height: 30) // 텍스트의 프레임 설정
                            .background(Color.chipSecondary)
                            .cornerRadius(16)
                            .padding(.vertical, 24)
                    }
                }
                .padding(.trailing, 32)
            }
        }
    }
    
    private func getWidth(for title: String) -> CGFloat {
        switch title {
        case "Playlists":
            return 73
        case "Podcasts":
            return 77
        case "Albums":
            return 70
        default:
            return 65
        }
    }
}

#Preview {
    LibraryView()
}
