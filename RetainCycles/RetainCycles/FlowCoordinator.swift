//
//  FlowCoordinator.swift
//  RetainCycles
//
//  Created by a.akhmadiev on 16.11.2021.
//

import UIKit

final class FlowCoordinator {

    // MARK: Private properties

    private let parentViewController: UINavigationController
    private let finishHandler: (() -> Void)?
    private var helpService: HelpService?
    private var retainService: RetainViewService?
    private var routingService: RetainRoutingService?
    private var flowService: FlowCoordinatorService?

    private weak var retainViewController: UIViewController?
    private weak var modalViewController: UIViewController?


    // MARK: Lifecycle

    init(
        parentViewController: UINavigationController,
        finishHandler: (() -> Void)?
    ) {
        self.parentViewController = parentViewController
        self.finishHandler = finishHandler
    }


    // MARK: Public

    func start() {
        let vc = RetainViewController()

        let flowService = FlowCoordinatorService(flowCoordinator: self)
        self.flowService = flowService

        let helpService = HelpService(flowCoordinatorService: flowService)
        self.helpService = helpService

        let routingService = RetainRoutingService(helpService: helpService)
        self.routingService = routingService

        let retainService = RetainViewService(routingService: routingService)
        self.retainService = retainService


        vc.retainViewService = retainService
        retainViewController = vc
        parentViewController.pushViewController(vc, animated: true)
    }

    func openNewRetainController() {

    }

    func showModalView() {
        
    }

    func finish() {
        finishAll()
    }


    // MARK: Private

    private func finishAll() {
        parentViewController.popViewController(animated: true)
    }
}
