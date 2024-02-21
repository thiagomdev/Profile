import UIKit

enum HomeFactory {
    static func make(
        sessionCoordinator: SessionCoordinating
    ) -> UIViewController {
        let coordinator = HomeCoordinator(sessionCoordinator: sessionCoordinator)
        let viewModel = HomeViewModel(coordinator: coordinator)
        let viewController = HomeViewController(viewModel: viewModel)
        return viewController
    }
}

