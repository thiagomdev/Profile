import Foundation

protocol UserInfoViewModeling {
    
}

final class UserInfoViewModel {
    private let coordinator: UserInfoCoordinating
    
    init(coordinator: UserInfoCoordinating) {
        self.coordinator = coordinator
    }
}

extension UserInfoViewModel: UserInfoViewModeling {
    
}
