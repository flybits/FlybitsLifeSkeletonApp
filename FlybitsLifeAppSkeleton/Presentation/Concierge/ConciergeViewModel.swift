//
//  ConciergeViewModel.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation
import SwiftUI

class ConciergeViewModel: ObservableObject {
    
    private let conciergeViewUseCase: ConciergeViewUseCase

    init(conciergeViewUseCase: ConciergeViewUseCase = ConciergeViewUseCaseImpl()) {
        self.conciergeViewUseCase = conciergeViewUseCase
    }
    
    // Figure out the parameters needed to configure viewController API
    func getConciergeViewController() -> some UIViewControllerRepresentable {
        return ConciergeViewController(conciergeViewUseCase: conciergeViewUseCase)
    }
    
    func getConciergeHeight(for id: String) -> Double {
        return conciergeViewUseCase.getHeight(for: id)
    }
}

struct ConciergeViewController: UIViewControllerRepresentable {
    let conciergeViewUseCase: ConciergeViewUseCase
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {

    }

    func makeUIViewController(context: Context) -> UIViewController {
        return conciergeViewUseCase.execute()
    }
}
