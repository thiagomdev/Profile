import UIKit

protocol SessionCoordinating {
    func start()
    func displayProfile()
    func displayMyAccount()
    func displayUserInfo()
    func displayAddress()
    func displayCards()
}

final class SessionCoordinator {
    private let window: UIWindow
    private let rootCoordinator: RootCoordinating
    private let navigation: UINavigationController
    
    init(
        window: UIWindow,
        rootCoordinator: RootCoordinating,
        navigation: UINavigationController
    ) {
        self.window = window
        self.rootCoordinator = rootCoordinator
        self.navigation = navigation
    }
}

extension SessionCoordinator: SessionCoordinating {
    func start() {
        let home = HomeFactory.make(sessionCoordinator: self)
        rootCoordinator.didDisplay(home)
    }
    
    func displayProfile() {
        let profile = ProfileFactory.make(sessionCoordinator: self)
        rootCoordinator.didDisplay(profile) 
    }
    
    func displayMyAccount() {
        let myAccount = MyAccountFactory.make(sessionCoordinator: self)
        rootCoordinator.didDisplay(myAccount)
    }
    
    func displayUserInfo() {
        let userInfo = UserInfoViewController()
        rootCoordinator.didDisplay(userInfo)
    }
    
    func displayAddress() {
        let address = AddressViewController()
        rootCoordinator.didDisplay(address)
    }
    
    func displayCards() {
        let cards = CardViewController()
        rootCoordinator.didDisplay(cards)
    }
}
