import UIKit

enum ProfileFactory {
    static func make(
        sessionCoordinator: SessionCoordinating
    ) -> UIViewController {
        let coordinator = ProfileCoordinator(sessionCoordinator: sessionCoordinator)
        let viewModel = ProfileViewModel(coordinator: coordinator)
        let viewController = ProfileViewController(viewModel: viewModel)
        return viewController
    }
}
