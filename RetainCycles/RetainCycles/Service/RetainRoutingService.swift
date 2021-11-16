//
//  RetainRoutingService.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import Foundation

final class RetainRoutingService {

    // MARK: Public

    private var helpService: HelpService


    // MARK: Lifecycle

    init(helpService: HelpService) {
        self.helpService = helpService
    }


    // MARK: Public

    func showModalScreen() {
        helpService.showModalView()
    }

    func closeAll() {
        helpService.closeAll()
    }
}
