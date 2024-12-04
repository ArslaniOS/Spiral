//
//  PassKeySignInView.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import SwiftUI
struct PassKeySignInView: View {
    @State private var isThumbPressed = false
    @EnvironmentObject var router: Router
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Background color
                Color.gradient(from: "#0085FF", to: "#003465")
                    .ignoresSafeArea()
                
                // Main content
                VStack {
                    Spacer()
                    
                    // Semi-transparent view
                    VStack(spacing: 15) {
                        // Always visible title
                        Text("Spiral")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom, 20)
                        
                        if isThumbPressed {
                            // Success Content
                            Image("success")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width * 0.4, height: geometry.size.width * 0.4)  // Dynamic image size
                                .transition(.scale)
                                .padding()
                        } else {
                            // Passkey Sign in Text
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Passkey Sign in")
                                    .font(.headline)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                Text("Place your finger on the sensor to continue")
                                    .font(.subheadline)
                                    .fontWeight(.thin)
                                    .foregroundColor(.white)
                            }
                            
                            // Thumb Button
                            Button(action: {
                                withAnimation {
                                    isThumbPressed = true
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    router.navigate(to: .home)
                                }
                            }) {
                                Image("touchIdScan")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width * 0.4, height: geometry.size.width * 0.4)  // Dynamic button size
                                    .foregroundColor(.white)
                            }
                            .padding()
                            
                            // Cancel Button
                            HorizontalButton(
                                title: "Cancel",
                                action: {
                                    router.navigateBack()
                                },
                                backgroundColor: (Color.buttonBg ?? .blue),
                                height: 40,
                                image: nil
                            )
                        }
                    }
                    .padding()
                    .background(Color.gradient(from: "#003465", to: "#5882C17D"))
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}




#Preview {
    PassKeySignInView()
}
