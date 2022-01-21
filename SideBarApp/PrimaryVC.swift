import UIKit

class PrimaryVC: UIViewController {
    override func loadView() {
        // MARK: views

        view = {
            let v = UIScrollView()
            v.backgroundColor = .systemGray6
            v.contentSize = .init(width: 20, height: 1000)
            return v
        }()

        // MARK: navigation

        navigationItem.title = NSLocalizedString("PrimaryVC.title", comment: "")
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic

    }

    override func viewDidLoad() {
        print("viewDidLoad()")
    }
}
