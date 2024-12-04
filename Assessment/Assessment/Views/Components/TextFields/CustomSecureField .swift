//
//  CustomSecureField .swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import SwiftUI


struct CustomSecureField: View {
    @Binding var text: String
    var placeholder: String? = nil
    var foregroundColor: Color = .white
    var backgroundColor: Color = Color(.init(white: 1, alpha: 0.15))
    var leadingImage: Image? = nil
    var borderColor: Color = .clear
    var borderWidth: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Placeholder when the text is empty
            if text.isEmpty, let placeholderText = placeholder {
                Text(placeholderText)
                    .foregroundColor(foregroundColor.opacity(0.6))
                    .padding(.leading, leadingImage == nil ? 12 : 40)
            }
            
            HStack {
                // Optional leading image
      
                    if let image = leadingImage {
                        image
                            .foregroundColor(foregroundColor)
                            .padding(.leading, 8)
                    }
                
              
                
                // Secure field
                SecureField("", text: $text)
                    .foregroundColor(foregroundColor)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 12)
            }
        }
        .background(backgroundColor)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(borderColor, lineWidth: borderWidth)
        )
        .frame(height: 40)
    }
}


//
//struct CustomSecureField__Previews: PreviewProvider {
//    static var previews: some View {
//        CustomSecureField_()
//    }
//}
