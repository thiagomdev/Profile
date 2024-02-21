import UIKit

final class AppCoordinator {
    private var window: UIWindow
    private var navigationController: UINavigationController
    private var rootViewController: UIViewController?
    private let rootCoordinator: RootCoordinating
    private let sessionCoordinator: SessionCoordinating

    init(
        _ window: UIWindow,
         navigationController: UINavigationController
    ) {
        self.window = window
        self.navigationController = navigationController
        self.rootCoordinator = RootCoordinator(window: window)
        
        self.sessionCoordinator = SessionCoordinator(
            window: window,
            rootCoordinator: rootCoordinator,
            navigation: navigationController
        )
    }
}

extension AppCoordinator {
    func start() {
        sessionCoordinator.start()
    }
}
