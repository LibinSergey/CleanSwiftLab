//
//  PostsInteractor.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation

protocol PostsBusinessLogic {
  func fetchPosts(_ request: PostsModels.FetchPosts.Request)
}

protocol PostsDataStore {
  var user: User? { get set }
  var posts: [Post] { get }
}

final class PostsInteractor: PostsBusinessLogic, PostsDataStore {

  // MARK: - Public Properties

  var presenter: PostsPresentationLogic?
  lazy var worker: PostsWorkingLogic = PostsWorker()

  var user: User?
  var posts: [Post] = []

  // MARK: - PostsBusinessLogic

  func fetchPosts(_ request: PostsModels.FetchPosts.Request) {
    guard let user = user else {
      return
    }

    worker.fetchPosts(userId: user.id) { posts in
      let posts = posts ?? []
      let response = PostsModels.FetchPosts.Response(owner: user, posts: posts)

      self.posts = posts
      self.presenter?.presentFetchedPosts(response)
    }
  }
}
