//
//  Router.swift
//  Assessment
//
//  Created by Arslan  on 04/12/2024.
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
    @Published var navPath = NavigationPath()
    @Published var sheetDestination: AuthFlow?
    @Published var stack: [AuthFlow] = []
    @Published var root: RootFlow = .login
    enum AuthFlow: Hashable, Codable {
        case login
        case passKey
        case home
        //case fingerprint
        case callerID(FrequentlyItem)
//        case authentication
        case profile 
    }
    enum RootFlow {
        case login
        case home
    }

    // Navigate to a specific destination
    func navigate(to destination: AuthFlow) {
        navPath.append(destination)
        stack.append(destination)
    }

    // Navigate back to the previous screen
    func navigateBack() {
        if !navPath.isEmpty {
            navPath.removeLast()
            stack.removeLast()
        }
    }

    // Navigate to the root of the navigation stack
    func navigationToRoot() {
        navPath.removeLast(navPath.count)
        stack.removeLast(navPath.count)
    }

    func navigationBack(to targer:AuthFlow) {
        guard !stack.isEmpty else {return}
        while let last = stack.last , last != targer {
            navPath.removeLast()
            stack.removeLast()
        }
    }

    // Present a sheet with a specific destination
    func presentSheet(_ destination: AuthFlow?) {
        sheetDestination = destination
        
    }
    
    func setRoot(_ root:RootFlow)
    {
        self.root = root
        navigationToRoot()
    }

    // Dismiss the currently presented sheet
    func dismissSheet() {
        sheetDestination = nil
    }

    // Dismiss the sheet and navigate to a new destination
    func dismissSheetAndNavigate(to destination: AuthFlow) {
        sheetDestination = nil // Dismiss the sheet
        navigate(to: destination) // Navigate to the desired destination
    }
}
