import UIKit

protocol RootCoordinating {
    func didDisplay(_ viewController: UIViewController)
}

final class RootCoordinator: RootCoordinating {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func didDisplay(_ viewController: UIViewController) {
        UIView.transition(
            with: window,
            duration: 0.3,
            options: .transitionCrossDissolve,
            animations: { [weak self] in
                guard let self else { return }
                window.rootViewController = viewController
                window.makeKeyAndVisible()
                window.layoutSubviews()
            }
        )
    }
}
