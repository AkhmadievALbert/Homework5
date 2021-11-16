//
//  NumberViewController.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import UIKit

final class NumberViewController: UIViewController {

    // MARK: Public properties

    var number: String = "" {
        didSet {
            numberLabel.text = "\(number) экран"
        }
    }

    // MARK: Private properties

    private let numberLabel: UILabel = {
        let label = UILabel()
        label.text = "№ экранa"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()




    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }


    // MARK: Private

    private func setupView() {
        view.backgroundColor = .secondarySystemBackground

        view.addSubview(numberLabel)
        numberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        numberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }


    // MARK: Actions

    @objc private func closeTapped() {

    }
}
