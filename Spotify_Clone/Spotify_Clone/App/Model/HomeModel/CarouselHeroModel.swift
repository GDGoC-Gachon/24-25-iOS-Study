//
//  CarouselHeroModel.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/30/24.
//

import Foundation

struct CarouselHeroItem: Identifiable {
    let id = UUID()
    var image: String
    var subtitle: String
    var description: String
}
