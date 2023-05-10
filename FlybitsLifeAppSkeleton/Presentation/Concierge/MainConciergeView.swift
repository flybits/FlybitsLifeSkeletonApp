//
//  MainConciergeView.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-08.
//

import SwiftUI

struct MainConciergeView: View {
    @ObservedObject var vm: ConciergeViewModel
    
    var body: some View {
        VStack {
            vm.getConciergeViewController()
                .frame(height: vm.getConciergeHeight(for: "1"))
            vm.getConciergeViewController()
                .frame(height: vm.getConciergeHeight(for: "2"))
        }
    }
}

struct MainConciergeView_Previews: PreviewProvider {
    static var previews: some View {
        MainConciergeView(vm: ConciergeViewModel())
    }
}
