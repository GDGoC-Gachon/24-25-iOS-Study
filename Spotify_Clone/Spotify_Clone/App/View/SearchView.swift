//
//  SearchView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/30/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    
    var body: some View {
        ZStack {
            Color.surfacePrimary.edgesIgnoringSafeArea(.all) // 배경 색 검정으로 설정
            
            ScrollView {
                VStack(spacing: 0) {
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
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.iconBlack)
                        TextField("(What do you want to play", text: $searchText)
                            .foregroundColor(Color.textPrimary)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.iconPrimary, lineWidth: 1)
                    )
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
