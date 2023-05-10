//
//  ConciergePushUseCaseImpl.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-08.
//

import Foundation
import UIKit

struct ConicergePushUseCaseImpl: ConciergePushUseCase {
    func sendPushToken() {
        // Concierge.sendPushToken
    }
    
    func handlePush() -> Push {
        // Concierge.handlePush
        return Push()
    }

    func handleDeepLink() -> UIViewController? {
        // Call Concierge.handleDeeplink
        return nil
    }
    
}
