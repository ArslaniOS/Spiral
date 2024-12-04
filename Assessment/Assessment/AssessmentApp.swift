//
//  AssessmentApp.swift
//  Assessment
//
//  Created by Arslan  on 03/12/2024.
//

import SwiftUI

@main
struct AssessmentApp: App {
    @ObservedObject private var router = Router()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath)  {
                SignUpView()
                    .navigationDestination(for: Router.AuthFlow.self) { destination in
                        switch destination {
                        case .login:
                            SignUpView()
                        case .home:
                            HomeView()
                        case .passKey:
                            PassKeySignInView()
                        case .profile:
                            ProfileView()
                        case .callerID(let frequencyObj): // Receive the data here
                               CallerView(frequencyObj: frequencyObj)
                        }
                    }
            }
            .preferredColorScheme(.light)
            .environmentObject(router)
            
        }
    }
}

