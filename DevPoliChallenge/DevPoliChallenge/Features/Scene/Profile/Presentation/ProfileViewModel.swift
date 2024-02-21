import Foundation

protocol ProfileViewModeling {
    func displaySomething()
}

final class ProfileViewModel {
    private let coordinator: ProfileCoordinating
    
    init(coordinator: ProfileCoordinating) {
        self.coordinator = coordinator
    }
}

extension ProfileViewModel: ProfileViewModeling {
    func displaySomething() {
        coordinator.doSomething()
    }
}
