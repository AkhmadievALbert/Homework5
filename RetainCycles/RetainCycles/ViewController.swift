//
//  ViewController.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: Private properties

    private var flowCoordinator: FlowCoordinator?

    private let showNewViewButton: UIButton = {
        let button = UIButton()
        button.setTitle("Нажми меня", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showNewViewTapped), for: .touchUpInside)
        return button
    }()




    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }


    // MARK: Private

    private func setupView() {
        view.addSubview(showNewViewButton)
        showNewViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        showNewViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }


    // MARK: Actions

    @objc private func showNewViewTapped() {
        guard let navigationController = self.navigationController else { return }
        flowCoordinator = FlowCoordinator(parentViewController: navigationController, finishHandler: {
            self.flowCoordinator = nil
        })
        flowCoordinator?.start()
    }
}

