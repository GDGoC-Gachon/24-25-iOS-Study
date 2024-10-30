//
//  GridCard.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/14/24.
//

import SwiftUI

struct GridCard: View {
    var gridTitle: String
    var gridImage: String
    
    var body: some View {
        HStack {
            Image(gridImage)
                .resizable()
                .frame(width: 56, height: 56)
            
            Spacer().frame(width: 8)
            
            Text(gridTitle)
                .font(Font.customFont(.body7_bold))
                .foregroundColor(Color.textPrimary)
                .lineLimit(2) // 텍스트 2줄까지 표시
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading) 
        }
        .background(Color.surfaceSecondary)
        .cornerRadius(4)
        .frame(width: 175, height: 56) // 카드 크기 고정시키고
        .clipped() // 크기 안에서 넘치지 않게
    }
}

#Preview {
    GridCard(gridTitle: "OK Computer", gridImage: "Grid_1")
}
