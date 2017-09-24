//
//  Copyright © 2017 Mubaloo. All rights reserved.
//

import UIKit

class PurchaseTabCoordinator: TabCoordinator {
    
    let storyboard: UIStoryboard? = UIStoryboard(.purchase)
    
    var rootController: UINavigationController
    var tabBarItem: UITabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
    
    init() {
        let main = storyboard?.instantiateViewController(withIdentifier: .selectItemViewController) as! SelectItemViewController
        main.viewModel = SelectItemViewModel()
        
        rootController = UINavigationController(rootViewController: main)
        rootController.tabBarItem = tabBarItem

    }
}
