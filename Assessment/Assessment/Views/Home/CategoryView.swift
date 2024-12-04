//
//  CategoryView.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import Foundation
import SwiftUI

struct CategoryView: View {
    let categories: [Category]

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 1) {
            ForEach(categories) { category in
                VStack(spacing: 8) {
                    Image(category.imageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                
                    Text(category.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                }
                .frame(maxWidth: .infinity) // Ensures equal column widths
            }
        }
        .padding(.horizontal)
    }
}
