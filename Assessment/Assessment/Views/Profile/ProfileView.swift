//
//  ProfileView.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    @State private var email: String = "example@example.com"
    @State private var phoneNumber: String = "+254182729202"
    @State private var career: String = "Developer"
    @State private var address: String = "Nairobi"
    @EnvironmentObject var router: Router
    var body: some View {

            VStack{
                HorizontalTabBar(title:"Edit Profile")
                    .padding(.horizontal)

        ScrollView {
            VStack(spacing: 10) {
                // Profile Image
                Image("editProfile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130)
                    .padding(.top, 40)
                
                // Name and Designation
                Text("John Doe")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Developer")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Email Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Email")
                        .font(.headline)
                    CustomTextField(
                        text:$email,
                        placeholder: "Enter your email",
                        foregroundColor: .gray,
                        backgroundColor: .clear,
                        leadingImage: Image(systemName: "envelope"),
                        borderColor: .gray,
                        borderWidth:0.2,
                        height:40
                    )
                    
                }
                .padding(.horizontal)
                
                
                // Email Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Phone Number")
                        .font(.headline)
                    CustomTextField(
                        text:$phoneNumber,
                        placeholder: "Enter phone number",
                        foregroundColor: .gray,
                        backgroundColor: .clear,
                        leadingImage: Image(systemName: "phone"),
                        borderColor: .gray,
                        borderWidth:0.2,
                        height:40
                    )
                    
                }
                .padding(.horizontal)
                // Email Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Career")
                        .font(.headline)
                    CustomTextField(
                        text:$career,
                        placeholder: "Enter career",
                        foregroundColor: .gray,
                        backgroundColor: .clear,
                        leadingImage:nil,
                        borderColor: .gray,
                        borderWidth:0.2,
                        height:40
                    )
                    
                }
                .padding(.horizontal)
                // Email Section
                VStack(alignment: .leading, spacing:12) {
                    Text("Address")
                        .font(.headline)
                    
                    CustomTextField(
                        text:$address,
                        placeholder: "Enter your address",
                        foregroundColor: .gray,
                        backgroundColor: .clear,
                        leadingImage:nil,
                        borderColor: .gray,
                        borderWidth:0.2,
                        height:40)
                   
                    
                }
                .padding(.horizontal)
                
                
                // Save Changes Button
                HorizontalButton(title:"Save Change", action: {
                    
                },
                                 backgroundColor:(Color.buttonBg ?? .blue),
                                 image:nil)
                
                .padding()
                
            }
        } }
        .navigationBarBackButtonHidden(true)
    
    }
  

    // Save Changes Action
    private func saveChanges() {
        print("Changes saved")
    }
}

#Preview {
    ProfileView()
}
