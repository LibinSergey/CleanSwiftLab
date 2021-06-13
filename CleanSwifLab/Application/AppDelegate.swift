//
//  AppDelegate.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

  // MARK: - Public Properties

  var window: UIWindow?
  
  // MARK: - Public Methods
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let initialViewController = AppHelper.createInitialController()

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = initialViewController
    window?.makeKeyAndVisible()
    
    return true
  }
}

