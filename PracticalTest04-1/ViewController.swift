import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Добро пожаловать"
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(gotoMainVC), for: .touchUpInside)
        return button
    }()
    
    @objc func gotoMainVC() {
        Storage.shared.setStateValue(value: true)
        let vc = MainViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubViews()
        }

    func setupSubViews() {
        
        view.addSubview(welcomeLabel)
        view.addSubview(startButton)
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(300)
            make.centerX.equalToSuperview()
        }
        
        startButton.snp.makeConstraints { make in
            make.bottom.equalTo(welcomeLabel).offset(-80)
            make.centerX.equalToSuperview()
            make.width.equalTo(160)
            make.height.equalTo(60)
        }
    }
}

