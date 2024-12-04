//
//  HorizontalButton.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import Foundation
import SwiftUI

struct HorizontalButton: View {
    let title: String
    let action: () -> Void
    var backgroundColor: Color = .blue
    var forgroundColor: Color = .white
    var height: CGFloat = 50
    let image: Image? // Optional image name
    
    var body: some View {
        Button(action: action) {
            HStack {
                // Show image if provided
                if image != nil {
                    if let image = image {
                                      image
                                          .resizable()
                                          .scaledToFit()
                                          .frame(width: height * 0.6, height: height * 0.6) 
                                  }
                }
             
                
                // Button title
                Text(title)
                    .foregroundColor(forgroundColor)
                    .fontWeight(.bold)
            }
            .frame(maxWidth: .infinity, minHeight: height) // Adjust height

            .background(backgroundColor)
           
            .cornerRadius(8)
        }
    }
}
