import UIKit

protocol ProfileCoordinating {
    func doSomething()
}

final class ProfileCoordinator {
    private let sessionCoordinator: SessionCoordinating
    
    init(sessionCoordinator: SessionCoordinating) {
        self.sessionCoordinator = sessionCoordinator
    }
}

extension ProfileCoordinator: ProfileCoordinating {
    func doSomething() {
        sessionCoordinator.displayProfile()
    }
}
