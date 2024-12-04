//
//  CallerView.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import SwiftUI

struct CallerView: View {
    @EnvironmentObject var router: Router
    @State var frequencyObj : FrequentlyItem? = nil
    var body: some View {
        VStack {
            HorizontalTabBar(title:frequencyObj?.title ?? "")
            Spacer()
            Image(frequencyObj?.imageUrl ?? "")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(frequencyObj?.title ?? "")
                .font(.title)
            
            Spacer()
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CallerView()
}
