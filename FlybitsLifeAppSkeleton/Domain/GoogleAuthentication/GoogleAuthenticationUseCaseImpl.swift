//
//  GoogleAuthenticationUseCaseImpl.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation

struct GoogleAuthenticationUseCaseImpl: GoogleAuthenticationUseCase {
    func disconnect() {
        print("Google disconnect")
    }
    
    func signIn() {
        print("Google Sign In")
    }
    
    func signOut() {
        print("Google Sign out")
    }
}
