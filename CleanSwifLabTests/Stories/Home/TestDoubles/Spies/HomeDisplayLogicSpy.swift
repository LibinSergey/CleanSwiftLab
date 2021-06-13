//
//  HomeViewControllerSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class HomeDisplayLogicSpy: HomeDisplayLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledDisplayFetchedUsers = false
  private(set) var users: [User] = []
  
  // MARK: - Public Methods
  
  func displayFetchedUsers(_ viewModel: HomeModels.FetchUsers.ViewModel) {
    isCalledDisplayFetchedUsers = true
    users = viewModel.users
  }
}
