import UIKit

enum MyAccountFactory {
    static func make(
        sessionCoordinator: SessionCoordinating
    ) -> UIViewController {
        let coordinator = MyAccountCoordinator(sessionCoordinator: sessionCoordinator)
        let viewModel = MyAccountViewModel(coordinator: coordinator)
        let viewController = MyAccountViewController(viewModel: viewModel)
        return viewController
    }
}
