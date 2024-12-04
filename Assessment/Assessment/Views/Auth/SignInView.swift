//
//  SignInView.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var router:Router
    @StateObject var viewModel = AuthViewModel()
    var body: some View {
        ZStack {
            // Background color
            Color.gradient(from: "#0085FF", to: "#003465")
                .ignoresSafeArea()

            ScrollView{
                // Main content
                
                VStack(spacing:20) {
                    Spacer()
              
                    // Semi-transparent view
                    VStack(spacing: 15) {
                        // Title
                        Text("Spiral")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        // Email Section
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Login")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            Text("Email")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            CustomTextField(
                                text:$viewModel.email,
                                placeholder: "Enter your email",
                                foregroundColor: .black,
                                backgroundColor: .white,
                                leadingImage:nil,
                                borderColor: .white,
                                borderWidth: 0,
                                height:40
                            )
                            
                        }
                        
                        // Password Section
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Password")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            CustomSecureField(
                                text:$viewModel.password,
                                placeholder: "Enter password",
                                foregroundColor: .black,
                                backgroundColor: .white,
                                leadingImage:nil,
                                borderColor: .white,
                                borderWidth: 0
                            )
                            
                        }
                        
                        HorizontalButton(
                            title: "Sign In",
                            action: {
                                viewModel.authenticate()
                                if viewModel.isAuthenticated {       router.navigate(to:.passKey)}
                                
                            },
                            backgroundColor:(Color.buttonBg ?? .blue),
                            height: 40,
                            image: nil
                        ).padding(.top)
                        
                        // OR Label
                        Text("Or choose")
                            .foregroundColor(.white)
                        
                        
                        // Passkey Button
                        HorizontalButton(
                            title: "Sign in with Passkey",
                            action: {
                                if viewModel.isAuthenticated {       router.navigate(to:.passKey)}
                            },
                            backgroundColor: Color.white,
                            forgroundColor: Color.buttonBg ?? .blue, height: 40,
                            image:Image("touchId")
                            
                            
                        )
                        
                        // Social Sign-In Buttons
                        HStack(spacing: 20) {
                            HorizontalButton(
                                title: "",
                                action: {
                                    
                                },
                                backgroundColor: Color.white,
                                forgroundColor: Color.buttonBg ?? .blue, height: 40,
                                image: Image("google"))
                            
                            HorizontalButton(
                                title: "",
                                action: {
                                    
                                },
                                backgroundColor: Color.white,
                                forgroundColor: Color.buttonBg ?? .blue, height: 40,
                                image: Image("git")
                                
                            )
                            
                        }.padding()
                        
                        // Register Label
                        HStack {
                            Text("Don't have an account yet?")
                                .foregroundColor(.white)
                            Button(action: {
                                // Register action
                            }) {
                                Text("Register now")
                                    .foregroundColor(Color(hex:"#05FBF3"))
                                    .fontWeight(.bold)
                            }
                        }.padding(.bottom)
                    }
                    .padding()
                    .background(Color.gradient(from: "#003465", to: "#5882C17D"))
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    .padding(.vertical,16)
                    
                    Spacer()
                
                }
                
                
            }        }  // Alert view
        .alert(isPresented:$viewModel.showAlert) {
            Alert(
                title: Text("Error"),
                message: Text(viewModel.errorMessage ?? ""),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    SignInView()
}
