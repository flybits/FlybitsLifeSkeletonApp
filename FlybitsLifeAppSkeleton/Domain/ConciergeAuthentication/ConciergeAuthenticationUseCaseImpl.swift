//
//  ConciergeLoginProtocol.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation

struct ConciergeAuthenticationUseCaseImpl: ConciergeAuthenticationUseCase {
    func connect(_ completionHandler: @escaping ConnectCompletion) {
        // Concierge.connect
        let user = User()
        completionHandler(user, nil)
    }
    
    func disconnect(_ completionHandler: @escaping DisconnectCompletion) {
        // Concierge.disconnect
        completionHandler(nil)
    }
    
    func activeUserStatus() -> ActiveUserStatus {
        .active
    }
}
