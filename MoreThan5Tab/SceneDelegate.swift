//
//  Copyright (c) 2023 shinren.pan@gmail.com All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder {
    var window: UIWindow?
}

// MARK: - UIWindowSceneDelegate

extension SceneDelegate: UIWindowSceneDelegate {
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        window.backgroundColor = .white
        window.rootViewController = makeTabBarVC()
        self.window = window
        window.makeKeyAndVisible()
    }
}

// MARK: - Make Something

private extension SceneDelegate {
    func makeTabBarVC() -> UITabBarController {
        let result = UITabBarController()
        result.viewControllers = makeViewControllers()
        
        let appearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .black
        result.tabBar.standardAppearance = appearance
        result.tabBar.scrollEdgeAppearance = appearance.copy()
        
        return result
    }
    
    func makeViewControllers() -> [UIViewController] {
        let colors: [UIColor] = [.red, .green, .yellow, .brown, .purple, .orange]
        var result: [UIViewController] = []
        
        for (index, color) in colors.enumerated() {
            let vc = ViewController(color: color)
            vc.title = "tab\(index + 1)"
            result.append(vc)
        }
        
        return result
    }
}
