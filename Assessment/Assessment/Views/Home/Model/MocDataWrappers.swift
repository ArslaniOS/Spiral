//
//  HomeDataWrappers.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation
// Mock Data Model for Card View
struct CardItem: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let designation: String
}
struct StoryItem: Identifiable,GridItems {
    var imageUrl: String
    var title: String
    let id = UUID()
}
struct FrequentlyItem: Identifiable,GridItems,Hashable,Codable {
    var imageUrl: String
    var title: String
    let id = UUID()
}
struct Category: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}
