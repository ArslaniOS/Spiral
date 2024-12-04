//
//  Color+Extensions.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import SwiftUI
let authBackGround: Color = Color("AuthBackgroundColor")
let buttonBg: Color = Color("ButtonBgColor")
let appBlue: Color = Color("AppBlue")


extension Color {
    /// Creates a linear gradient using two hex color strings.
    static func gradient(from hex1: String, to hex2: String) -> LinearGradient {
        let startColor = Color(hex: hex1)
        let endColor = Color(hex: hex2)
        
        return LinearGradient(
            gradient: Gradient(colors: [startColor, endColor]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
    
    /// Initialize a `Color` from a hex string.
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

