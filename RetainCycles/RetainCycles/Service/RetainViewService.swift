//
//  RetainViewService.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import Foundation

final class RetainViewService {

    private var routingService: RetainRoutingService

    init(routingService: RetainRoutingService) {
        self.routingService = routingService
    }


    // MARK: Public

    func showModalView() {
        routingService.showModalScreen()
    }

    func closeAll() {
        routingService.closeAll()
    }
}
