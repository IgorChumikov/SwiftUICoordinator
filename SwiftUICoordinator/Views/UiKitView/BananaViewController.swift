//
//  BananaViewController.swift
//  SwiftUICoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import UIKit

class BananaViewController: UIViewController {

    // MARK: - Properties
    
    var coordinator: Coordinator!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    
    private func setupUI() {
        view.backgroundColor = .white
        
        let pushButton = UIButton()
        pushButton.setTitle("Push 🥕", for: .normal)
        pushButton.setTitleColor(.blue, for: .normal)
        pushButton.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        
        let popButton = UIButton()
        popButton.setTitle("Pop", for: .normal)
        popButton.setTitleColor(.blue, for: .normal)
        popButton.addTarget(self, action: #selector(popButtonTapped), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [pushButton, popButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        title = "🍌"
    }
    
    // MARK: - Actions
    
    @objc private func pushButtonTapped() {
        coordinator.push(.carrot)
    }
    
    @objc private func popButtonTapped() {
        coordinator.pop()
    }
}

