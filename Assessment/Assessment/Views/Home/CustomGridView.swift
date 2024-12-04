//
//  CustomGridView.swift
// Assessment
//
//  Created by Arslan Dev on 4/12/2024.
//

import Foundation
import SwiftUI
protocol GridItems {
    var imageUrl: String { get }
    var title: String { get }
}

struct CustomGridView<T: GridItems>: View {
    let items: [T]
    let shape: ShapeType
    let onCellTap: (T) -> Void
    let isStoryGrid: Bool
    let onAddStoryTapped: (() -> Void)?
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            Button(action: {
                                onCellTap(item)  
                            }) {
                                CustomImageViewer(
                                    artworkUrl: "",
                                    width: 60,
                                    height: 60,
                                    shape: shape,
                                    scaling: .fit,
                                    localImageName: item.imageUrl
                                )
                            }
                            
                            // Add a Plus Button for the First Story Item
                            if isStoryGrid && index == 0, let onAddStoryTapped = onAddStoryTapped {
                                Button(action: {
                                    onAddStoryTapped()
                                }) {
                                    Image(systemName: "plus.circle.fill")
                                        .foregroundColor(.blue)
                                        .background(Circle().fill(Color.white))
                                        .frame(width: 20, height: 20)
                                }
                                .offset(x: -0, y:40)
                            }
                        }
                        Text(item.title)
                            .font(.caption)
                            .foregroundColor(.black)
                            .lineLimit(2)
                            .truncationMode(.tail)
                            .frame(width: 70, alignment: .center)
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                    }
                }
            }
            .padding()
        }
    }
}






