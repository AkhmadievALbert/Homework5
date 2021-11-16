//
//  ModalViewController.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import UIKit

final class ModalViewController: UIViewController {

    // MARK: Public properties

    var helpService: HelpService?


    // MARK: Private properties

    private let closeAllButton: UIButton = {
        let button = UIButton()
        button.setTitle("Закрой меня", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        return button
    }()




    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }


    // MARK: Private

    private func setupView() {
        view.backgroundColor = .systemBlue

        view.addSubview(closeAllButton)
        closeAllButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        closeAllButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }


    // MARK: Actions

    @objc private func closeTapped() {
        helpService?.closeAll()
    }
}

