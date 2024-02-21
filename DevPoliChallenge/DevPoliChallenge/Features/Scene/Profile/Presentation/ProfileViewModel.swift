import Foundation

protocol ProfileViewModeling {
    func displayView(basedOn index: [Int])
    func displayNumberOfRows() -> Int
}

final class ProfileViewModel {
    private let coordinator: ProfileCoordinating
    
    init(coordinator: ProfileCoordinating) {
        self.coordinator = coordinator
    }
}

extension ProfileViewModel: ProfileViewModeling {
    func displayView(basedOn index: [Int]) {
        index.forEach { indexPath in
            switch indexPath {
            case 0:
                coordinator.openMyAccount()
            case 1:
                coordinator.openUserInfo()
            case 2:
                coordinator.openAddress()
            case 3:
                coordinator.openCards()
            default:
                break
            }
        }
    }
    
    func displayNumberOfRows() -> Int {
        coordinator.showViews()
    }
}
