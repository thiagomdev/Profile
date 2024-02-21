import Foundation

protocol HomeViewModeling {
    func displayProfile()
}

final class HomeViewModel {
    private var dataObject: [AccountDataObject]
    private var coordinator: HomeCoordinating
    
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
