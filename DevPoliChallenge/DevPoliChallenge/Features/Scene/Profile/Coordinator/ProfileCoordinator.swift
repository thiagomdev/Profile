import UIKit

protocol ProfileCoordinating {
    func openMyAccount()
    func openUserInfo()
    func openAddress()
    func openCards()
    func showViews() -> Int
}

final class ProfileCoordinator {
    private let sessionCoordinator: SessionCoordinating
    
    init(sessionCoordinator: SessionCoordinating) {
        self.sessionCoordinator = sessionCoordinator
    }
}

extension ProfileCoordinator: ProfileCoordinating {
    func openMyAccount() {
        sessionCoordinator.displayMyAccount()
    }
    
    func openUserInfo() {
        sessionCoordinator.displayUserInfo()
    }
    
    func openAddress() {
        sessionCoordinator.displayAddress()
    }
    
    func openCards() {
        sessionCoordinator.displayCards()
    }
    
    func showViews() -> Int {
        sessionCoordinator.displayViews()
    }
}
