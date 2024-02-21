import UIKit

protocol HomeCoordinating: AnyObject {
    func openProfile()
}

final class HomeCoordinator {
    private let sessionCoordinator: SessionCoordinating
    
    init(sessionCoordinator: SessionCoordinating) {
        self.sessionCoordinator = sessionCoordinator
    }
}

extension HomeCoordinator: HomeCoordinating {
    func openProfile() {
        sessionCoordinator.displayProfile()
    }
}
