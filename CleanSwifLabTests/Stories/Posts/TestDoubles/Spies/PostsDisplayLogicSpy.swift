//
//  PostsDisplayLogicSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class PostsDisplayLogicSpy: PostsDisplayLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledDisplayFetchedPosts = false
  private(set) var owner: User?
  private(set) var posts: [Post] = []
  
  // MARK: - Public Methods
  
  func displayFetchedPosts(_ viewModel: PostsModels.FetchPosts.ViewModel) {
    isCalledDisplayFetchedPosts = true
    owner = viewModel.owner
    posts = viewModel.posts
  }
}
