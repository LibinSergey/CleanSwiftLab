//
//  HomeRouter.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

protocol HomeRoutingLogic {
  func routeToPosts()
}

protocol HomeDataPassing {
  var dataStore: HomeDataStore? { get }
}

final class HomeRouter: HomeRoutingLogic, HomeDataPassing {

  // MARK: - Public Properties

  weak var viewController: HomeViewController?
  var dataStore: HomeDataStore?

  // MARK: - HomeRoutingLogic

  func routeToPosts() {
    let postsViewController = AppStoryboard.Posts.viewController(
      PostsViewController.self,
      identity: .PostsViewController)
    
    guard var postsDataStore = postsViewController.router?.dataStore else {
      return
    }

    passDataToPosts(destination: &postsDataStore)
    navigateToPosts(destination: postsViewController)
  }

  // MARK: - Navigation

  private func navigateToPosts(destination: PostsViewController) {
    viewController?.navigationController?.pushViewController(destination, animated: true)
  }

  // MARK: - Passing data

  private func passDataToPosts(destination: inout PostsDataStore) {
    destination.user = dataStore?.selectedUser
  }
}
