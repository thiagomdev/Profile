import UIKit

final class MyAccountViewController: UIViewController {
    private let viewModel: MyAccountViewModeling

    private lazy var backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Voltar", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .semibold)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 12
        button.backgroundColor = .systemBrown
        button.addTarget(self, action: #selector(handleBackButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(viewModel: MyAccountViewModeling) {
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
    
    @objc
    private func handleBackButton() {
        viewModel.back()
    }
}

extension MyAccountViewController: ViewConfig {
    func buildViews() {
        view.addSubview(backButton)
    }
    
    func pin() {
        NSLayoutConstraint.pin([
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backButton.widthAnchor.constraint(equalToConstant: 130),
            backButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    func extraSetup() {
        view.backgroundColor = .cyan
    }
}
