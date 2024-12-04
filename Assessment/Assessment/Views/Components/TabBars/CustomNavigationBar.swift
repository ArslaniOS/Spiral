//
//  CustomNavigationBar.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import Foundation
import SwiftUI
struct CustomNavigationBar: View {
    var onAction: (() -> Void)?
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good Morning")
                    .font(.title)
                    .foregroundColor(.black)
                Text("December") // Current month, can be dynamic
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button(action: {
                // Action for the button (e.g., navigate to settings)
                onAction?()
            }) {
                Image("profile")
                    .foregroundColor(.black)
                    .imageScale(.large)
                    .frame(width:50,height: 50)
            }
        }
        .padding()
        .background(Color.white)
        //.shadow(radius: 5)
    }
}

#Preview {
    CustomNavigationBar()
}
