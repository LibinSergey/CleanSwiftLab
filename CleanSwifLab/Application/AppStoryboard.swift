//
//  AppStoryboard.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

enum AppStoryboard: String {
  case Home
  case Posts

  enum Controllers: String {
    case HomeNavigationController
    case PostsViewController
  }

  // MARK: - Public Methods

  var storyboard: UIStoryboard {
    return UIStoryboard(name: rawValue, bundle: Bundle.main)
  }

  func viewController<T: UIViewController>(_ type: T.Type, identity: AppStoryboard.Controllers) -> T {
    guard let controller = storyboard.instantiateViewController(withIdentifier: identity.rawValue) as? T else {
      fatalError("UIViewController with identifier \(identity.rawValue)")
    }

    return controller
  }
}
