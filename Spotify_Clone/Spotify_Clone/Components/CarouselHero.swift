//
//  CarouselHero.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/30/24.
//

import SwiftUI

struct CarouselHero: View {
    var carouselTitle: String
    var items: [CarouselHeroItem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(carouselTitle)
                .font(Font.customFont(.title4))
                .foregroundColor(Color.textPrimary)
                .padding(.leading, 16)
            
            Spacer().frame(height: 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in 
                        VStack(alignment: .leading) {
                            Image(item.image)
                                .frame(width: 147, height: 147)
                            
                            Spacer().frame(height: 8)
                            
                            Text(item.subtitle)
                                .font(Font.customFont(.body6_medium))
                                .foregroundColor(Color.textPrimary)
                            
                            Text(item.description)
                                .font(Font.customFont(.body6_regular))
                                .foregroundColor(Color.textSecondary)
                                .lineLimit(2) // 텍스트를 2줄로 제한
                        }
                        .frame(width: 147)
                    }
                }
                .padding(.leading, 16)
            }
        }
        .background(Color.surfacePrimary)
    }
}

#Preview {
    CarouselHero(
        carouselTitle: "title",
        items: [
            CarouselHeroItem(image: "CarouselHero_1", subtitle: "Subtitle 1", description: "Description 1"),
            CarouselHeroItem(image: "CarouselHero_1", subtitle: "Subtitle 2", description: "Description 2"),
            CarouselHeroItem(image: "CarouselHero_1", subtitle: "Subtitle 3", description: "Description 3")
        ]
    )
}
