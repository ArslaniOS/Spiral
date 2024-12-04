//
//  ValidationHelper.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation

class ValidationHelper {
    
    // This function takes the value and validation type to perform the necessary check
    static func validate(value: String?, type: ValidationType) -> Bool {
        switch type {
        case .email:
            return validateEmail(value)
        case .password:
            return validatePassword(value)
        case .confirmPassword:
            return validateConfirmPassword(value)
        }
    }
    
    // Validate email format using regular expression
    private static func validateEmail(_ email: String?) -> Bool {
        guard let email = email, !email.isEmpty else {
            return false
        }
        return isValidEmailFormat(email)
    }
    
    // Check if the email format is valid
    private static func isValidEmailFormat(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    // Validate if the password meets the strength criteria
    private static func validatePassword(_ password: String?) -> Bool {
        guard let password = password, !password.isEmpty else {
            return false
        }
        return isStrongPassword(password)
    }
    
    // Check if the password is strong (at least 8 characters with one uppercase, one lowercase, and one number)
    private static func isStrongPassword(_ password: String) -> Bool {
        let passwordRegEx = "(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,}"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        return passwordTest.evaluate(with: password)
    }
    
    // Validate confirm password matches the password
    private static func validateConfirmPassword(_ confirmPassword: String?) -> Bool {
        // Assuming the password is stored in a global variable or passed to the function
        let password = "yourPassword" // Replace with actual password variable if needed
        return confirmPassword == password
    }
}

