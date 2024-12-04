//
//  CustomImageViewer.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation
import SwiftUI

struct CustomImageViewer: View {
    let artworkUrl: String?
    let width: CGFloat
    let height: CGFloat
    let shape: ShapeType
    let scaling: ScalingType
    let localImageName: String?

    var body: some View {
        Group {
            if let artworkUrl = artworkUrl, let url = URL(string: artworkUrl) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .applyScaling(scaling)
                        .applyShape(shape)
                        .frame(width: width, height: height)
                } placeholder: {
                    ProgressView()
                        .frame(width: width, height: height)
                }
            } else if let localImageName = localImageName {
                // Use local image if available
                Image(localImageName)
                    .resizable()
                    .applyScaling(scaling)
                    .applyShape(shape)
                    .frame(width: width, height: height)
            } else {
                // Fallback image if no URL or local image is provided
                Image("image")
                    .resizable()
                    .applyScaling(scaling)
                    .applyShape(shape)
                    .frame(width: width, height: height)
                    .foregroundColor(.gray)
            }
        }
    }
}

enum ShapeType {
    case circle, rectangle
}

enum ScalingType {
    case fit, fill
}

// Modifying view for shape and scaling
extension View {
    func applyShape(_ shape: ShapeType) -> some View {
        switch shape {
        case .circle:
            return AnyView(self.clipShape(Circle()))
        case .rectangle:
            return AnyView(self)
        }
    }

    func applyScaling(_ scaling: ScalingType) -> some View {
        switch scaling {
        case .fit:
            return AnyView(self.scaledToFit())
        case .fill:
            return AnyView(self.scaledToFill())
        }
    }
}
