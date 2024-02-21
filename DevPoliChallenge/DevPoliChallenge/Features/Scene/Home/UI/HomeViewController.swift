import UIKit

final class HomeViewController: UIViewController {
    fileprivate enum Layout {}
    private var viewModel: HomeViewModeling
    
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 12
        button.backgroundColor = .lightGray
        button.addTarget(self, action: #selector(handleStartButton), for: .touchUpInside)
        return button
    }()
    
    init(viewModel: HomeViewModeling) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController {
    @objc
    private func handleStartButton() {
        viewModel.displayProfile()
    }
}

extension HomeViewController: ViewConfig {
    func buildViews() {
        view.addSubview(startButton)
    }
    
    func pin() {
        NSLayoutConstraint.pin([
            startButton.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            ),
            startButton.centerYAnchor.constraint(
                equalTo: view.centerYAnchor
            ),
            startButton.widthAnchor.constraint(
                equalToConstant: Layout.Dimensions.width
            ),
            startButton.heightAnchor.constraint(
                equalToConstant: Layout.Dimensions.height
            )
        ])
    }
    
    func extraSetup() {
        view.backgroundColor = .systemBackground
    }
}

extension HomeViewController.Layout {
    enum Dimensions {
        static let width: CGFloat = 130
        static let height: CGFloat = 48
    }
}
