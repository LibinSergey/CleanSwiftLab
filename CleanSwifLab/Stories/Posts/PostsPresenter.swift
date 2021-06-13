//
//  PostsPresenter.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation

protocol PostsPresentationLogic {
  func presentFetchedPosts(_ response: PostsModels.FetchPosts.Response)
}

final class PostsPresenter: PostsPresentationLogic {

  // MARK: - Public Properties

  weak var viewController: PostsDisplayLogic?

  // MARK: - PostsPresentationLogic

  func presentFetchedPosts(_ response: PostsModels.FetchPosts.Response) {
    let sortedPosts = response.posts.sorted { $0.title.count < $1.title.count }
    let viewModel = PostsModels.FetchPosts.ViewModel(owner: response.owner, posts: sortedPosts)

    viewController?.displayFetchedPosts(viewModel)
  }
}
