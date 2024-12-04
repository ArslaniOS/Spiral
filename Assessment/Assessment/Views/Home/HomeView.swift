//
//  HomeView.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @EnvironmentObject var router: Router
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
// **************Custom Navigation Bar****************
                CustomNavigationBar {
                    router.navigate(to: .profile)
                }
                
//**************Stories Section****************
                
                CustomGridView(
                    items: viewModel.storyItems,
                    shape: .circle,
                    onCellTap: { selectedStory in
                        print("Tapped story: \(selectedStory.title)")
                    },
                    isStoryGrid: true,
                    onAddStoryTapped: {
                        print("Add Story button tapped")
                    }
                )
                    
                
//**************CardView Section****************
                VStack(alignment: .leading, spacing: 10) {
                    CardView(cardItem:CardItem(image:"doctorProfile", name:"Dr, a Syahir", designation: "General Doctor"))
                }
                .padding(.horizontal)
                
//*************Category Section*****************
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                CategoryView(categories: viewModel.categories)
                
//***************Frequent Used Section***************
                HStack {
                    Text("Frequently Used")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: {
                        print("View All tapped")
                    }) {
                        Text("View All")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                CustomGridView(
                    items: viewModel.frequentlyItems,
                    shape: .rectangle,
                    onCellTap: { selectedItem in
                        router.navigate(to: .callerID(selectedItem))
                    },
                    isStoryGrid: false,
                    onAddStoryTapped: {
                        print("Add Story button tapped")
                    }
                )
                
              
                
//**************Financial Services Section****************
                HStack {
                    Text("Financial Services")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: {
                        print("View All tapped")
                    }) {
                        Text("View All")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                CustomGridView(
                    items: viewModel.frequentlyItems,
                    shape: .rectangle,
                    onCellTap: { selectedItem in
                        router.navigate(to: .callerID(selectedItem))
                    },
                    isStoryGrid: false,
                    onAddStoryTapped: {
                        print("Add Story button tapped")
                    }
                )
            }
            .padding(.top)
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .navigationBarBackButtonHidden(true)
    }
}




#Preview {
    HomeView()
}
