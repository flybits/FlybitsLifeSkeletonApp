//
//  AppDelegate.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-09.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    let container = DIContainer(pushService: ConicergePushUseCaseImpl(), configureService: ConciergeConfigurationUseCaseImpl())
    
    lazy var pushNotificationHandler: PushNotificationHandler? = {
        self.generatePushHandler()
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        container.configureService.configure()
        pushNotificationHandler?.requestAuthorization()
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // Call Concierge sendPush
        print("Did call register for remote notification with device token")
        container.pushService.sendPushToken()
    }
    
    private func generatePushHandler() -> PushNotificationHandler? {
        return PushNotificationHandler(pushService: container.pushService)
    }
}
