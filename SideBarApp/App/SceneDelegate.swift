import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    var mainSplitVC: UISplitViewController!
    var primaryVC: PrimaryVC!
    var secondaryVC: SecondaryVC!

    func scene(_ scene: UIScene,
               willConnectTo _: UISceneSession,
               options _: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        mainSplitVC = UISplitViewController(style: .doubleColumn)
        mainSplitVC.preferredDisplayMode = .oneBesideSecondary // always show sidebar button
        mainSplitVC.preferredSplitBehavior = .automatic
        mainSplitVC.presentsWithGesture = true

        primaryVC = PrimaryVC()
        secondaryVC = SecondaryVC()
        mainSplitVC.setViewController(primaryVC, for: .primary)
        mainSplitVC.setViewController(secondaryVC, for: .secondary)

        window!.rootViewController = mainSplitVC
        window!.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
