//
//  CustomTextField.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String? = nil
    var foregroundColor: Color = .white
    var backgroundColor: Color = Color(.init(white: 1, alpha: 0.15))
    var leadingImage: Image? = nil
    var borderColor: Color = .clear
    var borderWidth: CGFloat = 0
    var height: CGFloat = 50
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Placeholder when text is empty
            if text.isEmpty, let placeholderText = placeholder {
                Text(placeholderText)
                    .foregroundColor(foregroundColor.opacity(0.6))
                    .padding(.leading, leadingImage == nil ? 12 : 40) // Adjust to match the text alignment
            }
            
            HStack(spacing: 0) {
                if let image = leadingImage {
                    image
                        .foregroundColor(foregroundColor)
                        .padding(.leading, 8)
                }
                
                // Text Field
                TextField("", text: $text)
                    .foregroundColor(foregroundColor)
                    .padding(.vertical, 5)
                    .padding(.horizontal, leadingImage == nil ? 12 : 8) // Match placeholder padding
            }
        }
        .background(backgroundColor)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(borderColor, lineWidth: borderWidth)
        )
        .frame(height: height)
    }
}


//#Preview {
//    CustomTextField(text:.constant("Email"), placeholder:nil, foregroundColor: .gray, backgroundColor:.white, leadingImage:nil)
//}
