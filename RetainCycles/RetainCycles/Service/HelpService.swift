//
//  HelpService.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import Foundation

final class HelpService {

    // MARK: Private

    private let flowCoordinator: FlowCoordinator




    // MARK: Lifecycle

    init(flowCoordinator: FlowCoordinator) {
        self.flowCoordinator = flowCoordinator
    }


    // MARK: Public

    func showModalView() {
        flowCoordinator.finish()
    }

    func closeAll() {
        flowCoordinator.finish()
    }
}
