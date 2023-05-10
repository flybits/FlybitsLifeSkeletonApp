//
//  ConciergeViewUseCase.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-04.
//

import Foundation
import UIKit

protocol ConciergeViewUseCase {
    func execute() -> UIViewController
    func getHeight(for id: String) -> Double
}
