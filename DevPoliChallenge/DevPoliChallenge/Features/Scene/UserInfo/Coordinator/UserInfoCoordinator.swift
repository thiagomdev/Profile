import UIKit

protocol UserInfoCoordinating {
    func doSomething()
}

final class UserInfoCoordinator {
    private let sessionCoordinator: SessionCoordinating
    
    init(sessionCoordinator: SessionCoordinating) {
        self.sessionCoordinator = sessionCoordinator
    }
}

extension UserInfoCoordinator: UserInfoCoordinating {
    func doSomething() {
        sessionCoordinator.start()
    }
}
