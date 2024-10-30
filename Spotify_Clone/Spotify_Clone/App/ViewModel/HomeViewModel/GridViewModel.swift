//
//  GridViewModel.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/14/24.
//

import SwiftUI

class GridViewModel: ObservableObject {
    @Published var gridItems: [[GridItem]] = []
    
    init() {
        gridloadItems()
    }
    
    // 데이터를 불러오는 함수 (나중에 수정 필요)
    func gridloadItems() {
        gridItems = [
            [GridItem(title: "OK Computer", imageName: "Grid_1"),
             GridItem(title: "OK Computer", imageName: "Grid_1")],
            
            [GridItem(title: "OK Computer", imageName: "Grid_1"),
             GridItem(title: "OK Computer", imageName: "Grid_1")],
            
            [GridItem(title: "OK Computer", imageName: "Grid_1"),
             GridItem(title: "OK Computer", imageName: "Grid_1")],
            
            [GridItem(title: "OK Computer", imageName: "Grid_1"),
             GridItem(title: "OK Computer", imageName: "Grid_1")]
        ]
    }
}
