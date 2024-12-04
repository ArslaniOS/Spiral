//
//  HorizontalTabBar.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import SwiftUI
struct HorizontalTabBar: View {
    let title: String
    var subtitle: String?
    var subtitleColor: Color?
    
    var body: some View {
        HStack(alignment: .center) {  // Align items in the center vertically
            TmBackButton()
                .frame(height: 40) // Ensure the back button has a fixed height
            
            VStack {
                Text(title)
                    .font(.body)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 40)
                
                if let sub = subtitle, let color = subtitleColor {
                    Text(sub)
                        .font(.footnote)
                        .fontWeight(.regular)
                        .foregroundStyle(color)
                        .padding(.bottom, 8)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 16)
                }
            }
            
            Spacer()
                .frame(width: 40, height: 40)
        }
        .padding(.horizontal) // Add horizontal padding if necessary
    }
}


//#Preview {
////    HorizontalTabBar(title: "tst")
////    AllCategoriesView()
//    HorizontalTabBar(title:"Title")
//}
