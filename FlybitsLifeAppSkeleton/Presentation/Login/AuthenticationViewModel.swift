//
//  LoginViewModel.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation
import SwiftUI

class AuthenticationViewModel: ObservableObject {
    
    private let conciergeAuthenticationUseCase: ConciergeAuthenticationUseCase
    private let googleAuthenticationUseCase: GoogleAuthenticationUseCase

    @Published var state: State
    
    init(conciergeAuthenticationUseCase: ConciergeAuthenticationUseCase = ConciergeAuthenticationUseCaseImpl(),
         googleAuthenticationUseCase: GoogleAuthenticationUseCase = GoogleAuthenticationUseCaseImpl()) {
        self.conciergeAuthenticationUseCase = conciergeAuthenticationUseCase
        self.googleAuthenticationUseCase = googleAuthenticationUseCase
        self.state = .notConnected
    }

    func authenticateWithGoogle() {
        googleAuthenticationUseCase.signIn()
        // Once receive the token, need to call concierge connect
    }

    func authenticateWithFlybits() {
        conciergeAuthenticationUseCase.connect { [weak self] user, error in
            guard error == nil else {
                self?.state = .notConnected
                return
            }
            
            if let user = user {
                self?.state = user.isActive ? .connectedOptIn : .connectedOptOut
            }
        }
    }
    
    func disconnectWithFlybits() {
        
    }
    
    func disconnectWithGoogle() {
        state = .notConnected
    }
}

extension AuthenticationViewModel {
    
    enum State {
        case connectedOptIn
        case connectedOptOut
        case notConnected
    }
}
