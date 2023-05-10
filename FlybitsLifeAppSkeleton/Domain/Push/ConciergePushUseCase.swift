//
//  ConciergePushUseCase.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-08.
//

import Foundation
import UIKit

struct Push {
    
}

protocol ConciergePushUseCase {
    func sendPushToken()
    func handlePush() -> Push
    func handleDeepLink() -> UIViewController?
}
