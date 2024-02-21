import Foundation

protocol MyAccountViewModeling {
    func back()
}

final class MyAccountViewModel {
    private let coordinator: MyAccountCoordinating
    
    init(coordinator: MyAccountCoordinating) {
        self.coordinator = coordinator
    }
}

extension MyAccountViewModel: MyAccountViewModeling {
    func back() {
        coordinator.back()
    }
}
