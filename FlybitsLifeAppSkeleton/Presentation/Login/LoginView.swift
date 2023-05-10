//
//  LoginView.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authModel: AuthenticationViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Please Login using the following")
                Button(action: authModel.authenticateWithFlybits) {
                    Text("Login with Flybits")
                }
                Button(action: authModel.authenticateWithGoogle) {
                    Text("Login with Google")
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
