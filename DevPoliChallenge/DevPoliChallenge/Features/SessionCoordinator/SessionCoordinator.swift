import UIKit

protocol SessionCoordinating {
    func start()
    func displayProfile()
    func displayMyAccount()
    func displayUserInfo()
    func displayAddress()
    func displayCards()
    
    func displayViews() -> Int
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
        let userInfo = UserInfoFactory.make(sessionCoordinator: self)
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
    
    func displayViews() -> Int {
        let myAccount = MyAccountFactory.make(sessionCoordinator: self)
        let userInfo = UserInfoFactory.make(sessionCoordinator: self)
        let address = AddressViewController()
        let cards = CardViewController()
        let allViews: [UIViewController] = [myAccount, userInfo, address, cards]
        navigation.setViewControllers(allViews, animated: true)
        return allViews.count
    }
}
