//
//  DIContainer.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-09.
//

import Foundation

struct DIContainer {
    
    let pushService: ConciergePushUseCase
    let configureService: ConciergeConfigurationUseCase
    
    init(pushService: ConciergePushUseCase, configureService: ConciergeConfigurationUseCase) {
        self.pushService = pushService
        self.configureService = configureService
    }
}
