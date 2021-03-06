//
//  HomeWorker.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation

protocol HomeWorkingLogic {
  /// Request to API for loading list of users
  func fetchUsers(_ completion: @escaping ([User]?) -> Void)
}

final class HomeWorker: HomeWorkingLogic {

  // MARK: - Private Properties

  private let networkWorker: NetworkWorkingLogic = NetworkWorker()
  private let usersURL = URL(string: "https://jsonplaceholder.typicode.com/users")

  // MARK: - HomeWorkingLogic

  func fetchUsers(_ completion: @escaping ([User]?) -> Void) {
    guard let usersURL = usersURL else {
      completion(nil)
      return
    }

    networkWorker.sendRequest(to: usersURL, params: [:]) { (data, error) in
      guard let data = data else {
        completion(nil)
        return
      }

      let decoder = JSONDecoder()
      let users = try? decoder.decode([User].self, from: data)

      completion(users)
    }
  }
}
