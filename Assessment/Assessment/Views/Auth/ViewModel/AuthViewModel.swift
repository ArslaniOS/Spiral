//
//  AuthViewModel.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var address: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var errorMessage: String? = nil
    @Published var isAuthenticated: Bool = false
    @Published var  showAlert:Bool  = false
    func authenticate() {
        // Validate Email
        if !ValidationHelper.validate(value: email, type: .email) {
            showAlert.toggle()
            errorMessage = "Please enter a valid email address."
            return
        }
        
        // Validate Password
        if !ValidationHelper.validate(value: password, type: .password) {
            showAlert.toggle()
            errorMessage = "Password must be at least 8 characters long, and include an uppercase letter, a lowercase letter, and a number."
            return
        }
        
        // Validate Confirm Password
//        if !ValidationHelper.validate(value: confirmPassword, type: .confirmPassword) {
//            errorMessage = "Password and confirm password do not match."
//            return
//        }
        
        // Reset error message if validation passes
        errorMessage = nil
        
        // If validation passes, perform authentication (e.g., call an API, navigate, etc.)
        self.isAuthenticated = true
    }
}

