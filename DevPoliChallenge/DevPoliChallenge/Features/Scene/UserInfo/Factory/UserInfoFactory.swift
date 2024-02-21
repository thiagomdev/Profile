import UIKit

enum UserInfoFactory {
    static func make(sessionCoordinator: SessionCoordinating) -> UIViewController {
        let coordinator = UserInfoCoordinator(sessionCoordinator: sessionCoordinator)
        let viewModel = UserInfoViewModel(coordinator: coordinator)
        let viewController = UserInfoViewController(viewModel: viewModel)
        return viewController
    }
}
