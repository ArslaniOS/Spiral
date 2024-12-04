//
//  HomeViewModel.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var storyItems: [StoryItem] = []
    @Published var cardItems: [CardItem] = []
    @Published var categories: [Category] = []
    @Published var frequentlyItems: [FrequentlyItem] = []
    @Published var frequentlyItemsObj: FrequentlyItem? = nil
    
    // Mock Data Initialization
    init() {
        loadMockData()
    }
    
    private func loadMockData() {
        storyItems = [
            StoryItem(imageUrl: "myStory", title: "My Stories"),
            StoryItem(imageUrl: "selena", title: "Selena"),
            StoryItem(imageUrl: "clara", title: "Clara"),
            StoryItem(imageUrl: "fabian", title: "Fabian"),
            StoryItem(imageUrl: "img2", title: "Charlie")
           
        ]
        
        cardItems = [
            CardItem(image: "user1", name: "Alice", designation: "Developer"),
            CardItem(image: "user2", name: "Bob", designation: "Designer"),
            CardItem(image: "user3", name: "Charlie", designation: "Product Manager")
        ]
        
        categories = [
            Category(name: "", imageName: "meeting"),
            Category(name: "", imageName: "hangout"),
            Category(name: "", imageName: "cooking"),
            Category(name: "", imageName: "other"),
            Category(name: "", imageName: "weekend")
        ]
        
        frequentlyItems = [
            FrequentlyItem(imageUrl:"caller", title: "Caller ID"),
            FrequentlyItem(imageUrl:"credit", title: "Credit Champ"),
            FrequentlyItem(imageUrl:"bank", title: "Bank Transfer"),
            FrequentlyItem(imageUrl:"request", title: "Request Money"),
            FrequentlyItem(imageUrl:"transaction", title: "Transaction History")
        ]
    }
}
