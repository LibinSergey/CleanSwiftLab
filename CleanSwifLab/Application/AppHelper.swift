//
//  AppHelper.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

struct AppHelper {
  
  static func createInitialController() -> UIViewController {
    let viewController = AppStoryboard.Home.viewController(
      UINavigationController.self,
      identity: .HomeNavigationController)
    
    return viewController
  }
}
