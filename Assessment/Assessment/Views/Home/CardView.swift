//
//  CardView.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import SwiftUI

struct CardView: View {
    var cardItem: CardItem

    var body: some View {
        VStack(spacing: 16) {
            // Top Section
            HStack {
                // Circular Image
                Image(cardItem.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
                
                // Name and Designation
                VStack(alignment: .leading, spacing: 4) {
                    Text(cardItem.name)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(cardItem.designation)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                // Right Arrow
                Image("arrow-right")
                    .foregroundColor(.white)
                    .font(.title3)
            }
            
            // Divider
            Divider()
                .frame(height:0.5)
                .background(Color.white.opacity(0.5))
                .padding(.horizontal,1) // Extend divider to edges
            
            // Bottom Section
            HStack {
                // Calendar and Date
                HStack(spacing: 8) {
                    Image(systemName: "calendar")
                        .foregroundColor(.white)
                    Text("Dec 3, 2024")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
                
                Spacer()
                
                // Clock and Time
                HStack(spacing: 8) {
                    Image(systemName: "clock")
                        .foregroundColor(.white)
                    Text("10:45 AM")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
            }
        }
        .padding()
        .background(Color.appBlue)
        .cornerRadius(16)
    }
}


#Preview {
    CardView(cardItem:CardItem(image: "doctorProfile", name: "Alice", designation: "Developer"))
}
