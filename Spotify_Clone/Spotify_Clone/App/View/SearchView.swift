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
                    
                    Spacer().padding(.top, 16)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.iconBlack)
                        TextField("What do you want to play?", text: $searchText)
                            .foregroundColor(Color.textTertiary)
                            .font(Font.customFont(.body3_regular))
                    }
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.iconPrimary, lineWidth: 1)
                    )
                    .padding(.horizontal, 16)
                }
                
                Spacer().padding(.top, 16)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Explore your musical type")
                        .foregroundColor(Color.textPrimary)
                        .font(Font.customFont(.body3_regular))
                        .padding(.horizontal, 16)
                    
                    HStack {
                        Image("Music_type_1")
                            .padding(.trailing, 16)
                        Image("Music_type_2")
                            .padding(.trailing, 16)
                        Image("Music_type_3")
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
