import UIKit

final class UserInfoViewController: UIViewController {
    private let viewModel: UserInfoViewModeling
    
    init(viewModel: UserInfoViewModeling) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
