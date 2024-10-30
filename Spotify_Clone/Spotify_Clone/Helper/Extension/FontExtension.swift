//
//  FontExtension.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/11/24.
//

import SwiftUI

extension Font {
    enum FontFamily: String {
        case Regular, Medium, Bold, Black
        
        init?(weight: Int) {
            switch weight {
            case 400: self = .Regular
            case 500: self = .Medium
            case 700: self = .Bold
            case 900: self = .Black
            default: return nil
            }
        }
    }
    
    enum CustomTextStyle {
        case title1, title2, title3, title4, title5
        case body1_bold, body1_regular, body2_bold, body2_regularUppercase, body3_bold, body3_medium, body3_regular
        case body4_bold, body4_black, body4_regular
        case body5_bold, body5_regular
        case body6_bold, body6_medium, body6_regular
        case body7_bold, body7_regular
        
        var size: CGFloat {
            switch self {
            case .title1: return 44
            case .title2: return 30
            case .title3: return 23
            case .title4: return 22
            case .title5: return 19
            case .body1_bold, .body1_regular: return 18
            case .body2_bold, .body2_regularUppercase: return 17
            case .body3_bold, .body3_medium, .body3_regular: return 15
            case .body4_bold, .body4_black, .body4_regular: return 14
            case .body5_bold, .body5_regular: return 13
            case .body6_bold, .body6_medium, .body6_regular: return 12
            case .body7_bold, .body7_regular: return 11
            }
        }
        
        var family: FontFamily {
            switch self {
            case .title1, .title2, .title3, .title4, .title5,
                 .body1_bold, .body2_bold, .body3_bold, .body4_bold, .body5_bold, .body6_bold, .body7_bold:
                return .Bold
            case .body3_medium, .body6_medium:
                return .Medium
            case .body4_black:
                return .Black
            default:
                return .Regular
            }
        }
    }
    
    static func customFont(_ style: CustomTextStyle) -> Font {
        return Font.custom("Pretendard-\(style.family.rawValue)", size: style.size)
    }
    
    static func customFont(size: CGFloat, weight: Int) -> Font {
        guard let family = FontFamily(weight: weight) else {
            fatalError("Invalid weight value. Must be between 100 and 900.")
        }
        return Font.custom("Pretendard-\(family.rawValue)", size: size)
    }
    
    static func customFont(size: CGFloat, family: FontFamily) -> Font {
        return Font.custom("Pretendard-\(family.rawValue)", size: size)
    }
}
