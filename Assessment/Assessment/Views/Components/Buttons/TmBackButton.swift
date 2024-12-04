//
//  TmBackButton.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation
import SwiftUI
struct TmBackButton: View {
    @EnvironmentObject var router:Router
    var body: some View {
        Button(action: {
            router.navigateBack()
        }, label: {
            Image(systemName: "arrow.left")
                .font(.title3)
                //.frame(width: 40, height: 40)
//                .overlay {
//                    RoundedRectangle(cornerRadius: 12)
//                        .stroke(.gray.opacity(0.5), style: StrokeStyle())
//                }
        }).buttonStyle(.plain)
    }
}

#Preview {
    TmBackButton()
}
