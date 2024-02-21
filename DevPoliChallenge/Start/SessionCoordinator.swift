import UIKit

protocol SessionCoordinating {
    func start()
    func displayProfile()
}

final class SessionCoordinator {
    private let window: UIWindow
    private let rootCoordinator: RootCoordinating
    private let navigation: UINavigationController
    
    init(
        window: UIWindow,
        rootCoordinator: RootCoordinating,
        navigation: UINavigationController
    ) {
        self.window = window
        self.rootCoordinator = rootCoordinator
        self.navigation = navigation
    }
}

extension SessionCoordinator: SessionCoordinating {
    func start() {
        let home = HomeFactory.make(sessionCoordinator: self)
        rootCoordinator.didDisplay(home)
    }
    
    func displayProfile() {
        let profile = ProfileViewController()
        rootCoordinator.didDisplay(profile)
    }
}
