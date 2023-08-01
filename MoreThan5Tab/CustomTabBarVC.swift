//
//  Copyright (c) 2023 shinren.pan@gmail.com All rights reserved.
//

import UIKit

final class CustomTabBarVC: UITabBarController {
    
    override var traitCollection: UITraitCollection {
        let realTraits = super.traitCollection
        // 使用假的 traitCollection 來讓 iPhone 可以塞超過 5 個
        let fakeTraits = UITraitCollection(horizontalSizeClass: .regular)
       return UITraitCollection(traitsFrom: [realTraits, fakeTraits])
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        // 不做任何事
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        // 不做任何事
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        // 不做任何事
    }
}
