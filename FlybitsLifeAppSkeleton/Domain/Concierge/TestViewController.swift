//
//  TestViewController.swift
//  FlybitsLifeAppSkeleton
//
//  Created by Howard Tsai on 2023-05-08.
//
import Foundation
import UIKit

class TestViewController: UIViewController {
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .blue
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension TestViewController {
    
    func setup() {
        view.addSubview(textLabel)
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
