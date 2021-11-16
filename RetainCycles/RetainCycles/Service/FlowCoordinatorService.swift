//
//  FlowCoordinatorService.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import Foundation

final class FlowCoordinatorService {

    // MARK: Private

    private weak var flowCoordinator: FlowCoordinator?




    // MARK: Lifecycle

    init(flowCoordinator: FlowCoordinator) {
        self.flowCoordinator = flowCoordinator
    }


    // MARK: Public

    func showModalView() {
        flowCoordinator?.finish()
    }

    func closeAll() {
        flowCoordinator?.finish()
    }
}
