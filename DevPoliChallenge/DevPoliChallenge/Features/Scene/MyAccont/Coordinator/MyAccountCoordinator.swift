import UIKit

protocol MyAccountCoordinating {
    func back()
}

final class MyAccountCoordinator {
    private let sessionCoordinator: SessionCoordinating
    
    init(sessionCoordinator: SessionCoordinating) {
        self.sessionCoordinator = sessionCoordinator
    }
}

extension MyAccountCoordinator: MyAccountCoordinating {
    func back() {
        sessionCoordinator.displayProfile()
    }
}

