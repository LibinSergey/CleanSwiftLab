//
//  HomeBusinessLogicSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class HomeBusinessLogicSpy: HomeBusinessLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledFetchUsers = false
  private(set) var isCalledSelectUser = false
  
  // MARK: - Public Methods
  
  func fetchUsers(_ request: HomeModels.FetchUsers.Request) {
    isCalledFetchUsers = true
  }
  
  func selectUser(_ request: HomeModels.SelectUser.Request) {
    isCalledSelectUser = true
  }
}
