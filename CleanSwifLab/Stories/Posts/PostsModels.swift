//
//  PostsModels.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

enum PostsModels {

  // MARK: - Fetch selected user posts
  
  enum FetchPosts {
    struct Request {}

    struct Response {
      let owner: User
      let posts: [Post]
    }

    struct ViewModel {
      let owner: User
      let posts: [Post]
    }
  }
}
