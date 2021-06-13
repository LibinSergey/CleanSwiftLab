//
//  HomeWorkingLogicSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class HomeWorkingLogicSpy: HomeWorkingLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledFetchUsers = false
  
  let users: [User] = [
    User(id: 1, name: "Ivan", username: "ivan91"),
    User(id: 2, name: "Igor", username: "igor_test")
  ]
  
  // MARK: - Public Methods
  
  func fetchUsers(_ completion: @escaping ([User]?) -> Void) {
    isCalledFetchUsers = true
    completion(users)
  }
}
