import Foundation

protocol ViewConfig: AnyObject {
    func buildViews()
    func pin()
    func extraSetup()
    func setup()
}

extension ViewConfig {
    func setup() {
        buildViews()
        pin()
        extraSetup()
    }
}
