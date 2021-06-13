//
//  HomeModels.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

enum HomeModels {

  // MARK: - Fetch list of user and display in table
  
  enum FetchUsers {
    struct Request {}

    struct Response {
      let users: [User]
    }

    struct ViewModel {
      let users: [User]
    }
  }

  // MARK: - Select user by index
  
  enum SelectUser {
    struct Request {
      let index: Int
    }
  }
}
