//
//  PushNotificationEventHandler.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-09.
//

import Foundation
import UserNotifications

class PushNotificationHandler: NSObject {
    
    let pushService: ConciergePushUseCase
    
    init(pushService: ConciergePushUseCase) {
        self.pushService = pushService
        super.init()
        UNUserNotificationCenter.current().delegate = self
    }
    
    func requestAuthorization() {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.sound, .alert]) { (isGranted, error) in
            print("IsGranted: \(isGranted)")
            print("Error: \(String(describing: error))")
        }
    }
}

extension PushNotificationHandler: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        print("willPresent notification in Banner style")
        completionHandler(.banner)
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print("Did receive response push notification, will call handlePush and deeplink")
        let push = pushService.handlePush()
        let vc = pushService.handleDeepLink()
        completionHandler()
    }
}

