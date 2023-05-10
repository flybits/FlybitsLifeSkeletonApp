//
//  GoogleAuthenticationUseCase.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation

protocol GoogleAuthenticationUseCase {
    func signIn()
    func disconnect()
    func signOut()
}
