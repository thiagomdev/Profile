import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var appCoordinator: AppCoordinator?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        return runApp()
    }
}

extension AppDelegate {
    private func runApp() -> Bool {
        let window = UIWindow(frame: UIScreen.main.coordinateSpace.bounds)
        self.window = window
        let navigation = UINavigationController()
        
        appCoordinator = AppCoordinator(
            window,
            navigationController: navigation
        )
        appCoordinator?.start()
        return true
    }
}
