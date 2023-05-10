//
//  ConciergeViewUseCaseImpl.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation
import SwiftUI

struct ConciergeViewUseCaseImpl: ConciergeViewUseCase {

    // Include params to configure viewController API
    func execute() -> UIViewController {
        // Call Concierge.viewController
        return TestViewController()
    }
    
    func getHeight(for id: String) -> Double {
        // Call Concierge.zoneConfiguration
        return 300
    }
}
