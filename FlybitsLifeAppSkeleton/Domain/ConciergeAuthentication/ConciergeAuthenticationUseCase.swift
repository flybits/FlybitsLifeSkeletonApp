//
//  UseCase.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation

struct User {
    let isActive = false
}

typealias DisconnectCompletion = (_ error: NSError?) -> Void
typealias ConnectCompletion =  (_ user: User?, _ error: NSError?) -> Void

enum ActiveUserStatus {
    case active
    case activeOptout
    case inactive
}

protocol ConciergeAuthenticationUseCase {
    func connect(_ completionHandler: @escaping ConnectCompletion)
    func disconnect(_ completionHandler: @escaping DisconnectCompletion)
    func activeUserStatus() -> ActiveUserStatus
}
