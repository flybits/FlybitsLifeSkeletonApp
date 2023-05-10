//
//  FlybitsLifeAppSkeletonApp.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import SwiftUI

@main
struct FlybitsLifeAppSkeletonApp: App {
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authenticationViewModel)
        }
    }
}
