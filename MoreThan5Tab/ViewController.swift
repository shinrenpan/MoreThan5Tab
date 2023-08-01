//
//  Copyright (c) 2023 shinren.pan@gmail.com All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    let color: UIColor
    
    init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = UIView(frame: .zero)
        view.backgroundColor = color
        self.view = view
    }
}
