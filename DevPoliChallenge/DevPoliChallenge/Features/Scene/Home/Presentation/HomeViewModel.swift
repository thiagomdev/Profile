import Foundation

protocol HomeViewModeling {
    func displayProfile()
}

final class HomeViewModel {
    private var dataObject: [AccountDataObject]
    private let coordinator: HomeCoordinating
    
    init(
        coordinator: HomeCoordinating,
        dataObject: [AccountDataObject] = []
    ) {
        self.coordinator = coordinator
        self.dataObject = dataObject
    }
}

extension HomeViewModel: HomeViewModeling {
    func displayProfile() {
        coordinator.openProfile()
    }
}
