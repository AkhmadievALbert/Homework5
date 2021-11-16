//
//  HelpService.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import Foundation

final class HelpService {

    // MARK: Private properties

    private let flowCoordinatorService: FlowCoordinatorService




    // MARK: Lifecycle

    init(flowCoordinatorService: FlowCoordinatorService) {
        self.flowCoordinatorService = flowCoordinatorService
    }


    // MARK: Public

    func showModalView() {
        flowCoordinatorService.showModalView()
    }

    func closeAll() {
        flowCoordinatorService.closeAll()
    }
}
