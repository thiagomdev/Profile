import UIKit

final class ProfileCell: UITableViewCell {
    static var identifier: String { String(describing: self) }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProfileCell: ViewConfig {
    func buildViews() {
        
    }
    
    func pin() {
        
    }
    
    func extraSetup() {
        selectionStyle = .none
        contentView.backgroundColor = .systemBackground
    }
}
