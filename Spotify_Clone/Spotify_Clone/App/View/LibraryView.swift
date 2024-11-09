//
//  SwiftUIView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 11/8/24.
//

import SwiftUI

struct LibraryView: View {
    @State private var isGridView: Bool = true
    
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
                
                HStack {
                    HStack {
                        Image(systemName: "arrow.up.arrow.down")
                            .foregroundColor(Color.textPrimary)
                        Text("Recents")
                            .foregroundColor(Color.textPrimary)
                            .font(Font.customFont(.body7_regular))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        isGridView.toggle()
                    }) {
                        Image(systemName: isGridView ? "square.grid.2x2" : "list.bullet")
                            .foregroundColor(Color.textPrimary)
                            .padding(.leading, 8)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                
                ScrollView {
                    if isGridView {
                        GridView()
                    } else {
                        ListView()
                    }
                }
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

struct GridView: View {
    var body: some View {
        LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3), spacing: 16) {
            ForEach(0..<20, id: \.self) { index in
                LibraryAlbumView(title: "Liked Songs", description: "Playlist • 16 songs")
            }
        }
        .padding(.horizontal, 16)
    }
}

struct ListView: View {
    var body: some View {
        VStack(spacing: 16) {
            ForEach(0..<20, id: \.self) { index in
                HStack {
                    Rectangle()
                        .frame(width: 60, height: 60)
                        .cornerRadius(8)
                        .foregroundColor(Color.blue.opacity(0.3))
                        .overlay(
                            Image("LibraryAlbum_1")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .opacity(0.7)
                        )
                    
                    VStack(alignment: .leading) {
                        Text("Liked Songs")
                            .font(Font.customFont(.body3_regular))
                            .foregroundColor(Color.textPrimary)
                        
                        HStack {
                            Image(systemName: "pin.fill")
                                .foregroundColor(.green)
                                .font(.caption)
                            
                            Text("16 songs")
                                .font(Font.customFont(.body7_regular))
                                .foregroundColor(Color.textSecondary)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct LibraryAlbumView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("LibraryAlbum_1")
        
            Text(title)
            .font(Font.customFont(.body3_regular))
            .foregroundColor(Color.textPrimary)
            .padding(.top, 4)
            
            HStack {
                Image(systemName: "pin.fill")
                    .foregroundColor(.green)
                    .font(.caption)
                
                Text(description)
                    .font(Font.customFont(.body7_regular))
                    .foregroundColor(Color.textSecondary)
            }
        }
    }
}

#Preview {
    LibraryView()
}
