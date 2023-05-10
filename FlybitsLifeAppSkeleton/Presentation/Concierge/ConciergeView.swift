//
//  ConciergeView.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-08.
//

import SwiftUI

struct ConciergeView: View {
    @ObservedObject private var conciergeViewModel = ConciergeViewModel()
    
    var body: some View {
        TabView {
            MainConciergeView(vm: conciergeViewModel)
                .tabItem {
                    Label("Concierge 1", systemImage: "list.dash")
                }
            conciergeViewModel.getConciergeViewController()
                .tabItem {
                    Label("Concierge 2", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ConciergeView_Previews: PreviewProvider {
    static var previews: some View {
        ConciergeView()
    }
}
