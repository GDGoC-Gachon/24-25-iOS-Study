//
//  RecommendedCard.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/30/24.
//

import SwiftUI

struct RecommendedCard: View {
    var recommendProfile: String
    var recommendArtist: String
    var recommendAlbum: String
    var recommendSong: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(recommendProfile)
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading) {
                    Spacer().frame(height: 10)
                    
                    Text("New release from")
                        .font(Font.customFont(.body6_regular))
                        .foregroundColor(Color.textSecondary)

                    Spacer().frame(height: 4)
                    
                    Text(recommendArtist)
                        .font(Font.customFont(.title4))
                        .foregroundColor(Color.textPrimary)
                }
            }
            
            HStack() {
                Image(recommendAlbum)
                    .resizable()
                    .frame(width: 142, height: 142)
                
                Spacer().frame(width: 16)
                
                VStack(spacing: 61) {
                    Text(recommendSong)
                        .font(Font.customFont(.body6_bold))
                        .foregroundColor(Color.textPrimary)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                
                    HStack {
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color.surfaceWhite)
                        
                        Button(action: {}) {
                            Image(systemName: "play.circle.fill")
                                .foregroundColor(Color.surfaceWhite)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 20)
                    }
                }
            }
            .background(Color.surfaceSecondary)
            .frame(width: 358)
            .cornerRadius(8)
        }
        .background(Color.surfacePrimary)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    RecommendedCard(recommendProfile: "RecommendedCard_Profile", recommendArtist: "Artist Monkeys", recommendAlbum: "RecommendedCard_Album", recommendSong: "I wanna Be Yours")
}
