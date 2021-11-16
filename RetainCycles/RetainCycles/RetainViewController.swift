//
//  RetainViewController.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import UIKit

final class RetainViewController: UIViewController {

    // MARK: Public properties

    var retainViewService: RetainViewService?


    // MARK: Private properties

    private let closeAllButton: UIButton = {
        let button = UIButton()
        button.setTitle("Закрой меня", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        return button
    }()

    private let helpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Хелп ми", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showModalTapped), for: .touchUpInside)
        return button
    }()




    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }


    // MARK: Private

    private func setupView() {
        view.backgroundColor = .secondarySystemBackground

        view.addSubview(closeAllButton)
        closeAllButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        closeAllButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(helpButton)
        helpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helpButton.topAnchor.constraint(equalTo: closeAllButton.bottomAnchor, constant: 16).isActive = true
    }


    // MARK: Actions

    @objc private func closeTapped() {
        retainViewService?.closeAll()
    }

    @objc private func showModalTapped() {
        retainViewService?.showModalView()
    }
}
