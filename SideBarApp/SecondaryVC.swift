import UIKit

class SecondaryVC: UIViewController {
    override func loadView() {
        // MARK: views

        view = {
            let v = UIView()
            v.backgroundColor = .white
            return v
        }()

        // MARK: navigation

        title = NSLocalizedString("SecondaryVC.title", comment: "")
    }

    override func viewDidLoad() {
        print("viewDidLoad()")
    }
}
