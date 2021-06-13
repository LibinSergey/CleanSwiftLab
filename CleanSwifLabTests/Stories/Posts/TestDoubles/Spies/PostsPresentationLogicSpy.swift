//
//  PostsPresentationLogicSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class PostsPresentationLogicSpy: PostsPresentationLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledPresentFetchedPosts = false
  
  // MARK: - Public Methods
  
  func presentFetchedPosts(_ response: PostsModels.FetchPosts.Response) {
    isCalledPresentFetchedPosts = true
  }
}
