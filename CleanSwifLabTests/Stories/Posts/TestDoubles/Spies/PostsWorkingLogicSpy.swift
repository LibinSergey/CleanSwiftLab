//
//  PostsWorkingLogicSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class PostsWorkingLogicSpy: PostsWorkingLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledFetchPosts = false
  
  // MARK: - Public Methods
  
  func fetchPosts(userId: Int, _ completion: @escaping ([Post]?) -> Void) {
    isCalledFetchPosts = true
    completion(nil)
  }
}
