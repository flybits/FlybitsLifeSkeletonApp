//
//  ContentView.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel

    var body: some View {
        NavigationView {
            switch authViewModel.state {
            case .connectedOptIn:
                ConciergeView()
                    .navigationTitle("Concierge")
                    .toolbar {
                        Button(action: authViewModel.disconnectWithGoogle) {
                            Text("Sign Out")
                        }
                    }
            case .notConnected:
                LoginView()
            case .connectedOptOut:
                Text("Opted Out, Launch OptIn Screen")
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
