//
//  SearchView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/30/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            Color.surfacePrimary.edgesIgnoringSafeArea(.all) // 배경 색 검정으로 설정
            
            ScrollView {
                // Profile
                HStack(spacing: 0) {
                    Image("Profile")
                        .padding(.trailing, 8)
                    
                    Text("Serch")
                        .font(Font.customFont(.title4))
                        .foregroundColor(Color.textPrimary)
                    
                    Spacer()
                    
                    Image(systemName: "camera")
                        .foregroundColor(Color.textPrimary)
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    SearchView()
}
