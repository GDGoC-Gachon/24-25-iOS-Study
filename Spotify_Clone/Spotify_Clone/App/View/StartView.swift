//
//  StartView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/11/24.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        ZStack {
            Color(Color.surfacePrimary).edgesIgnoringSafeArea(.all)  // edgesIgnoringSafeArea(.all) 사용하여 전체 배경 색상 변경하기
            
            VStack {
                Image("MainLogo")
            }
        }
    }
}

#Preview {
    StartView()
}
