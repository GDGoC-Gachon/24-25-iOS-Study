//
//  CategoryCell.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/13/24.
//

import SwiftUI

struct CategoryCell: View {
    var categoryTitle: String = "All" // 선택 기본값을 All로 설정
    var isSelected: Bool = false
    
    var body: some View {
        Text(categoryTitle) // title 변수 반영 -> 기본값 All로 설정 가능
            .font(Font.customFont(.body7_regular))
            .frame(width: getWidth(for: categoryTitle), height: 30) // 최소 높이는 30으로 고정
            .background(isSelected ? Color.chipGreen : Color.chipSecondary)
            .foregroundStyle(isSelected ? Color.textTertiary : Color.textPrimary)
            .cornerRadius(16)
            .padding(.horizontal, 8)
            .padding(.vertical, 7)
    }
    
    // 각 카테고리의 너비를 임의로 설정 (text에 딱 붙어서 보이는 문제 해결)
    private func getWidth(for title: String) -> CGFloat {
        switch title {
        case "All":
            return 46
        case "Music":
            return 63
        case "Podcasts":
            return 77
        default:
            return 46 // 기본값
        }
    }
}

#Preview {
    CategoryCell()
}
