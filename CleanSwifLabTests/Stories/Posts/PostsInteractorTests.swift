//
//  PostsInteractorTests.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import XCTest
@testable import CleanSwifLab

final class PostsInteractorTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var sut: PostsInteractor!
  private var presenter: PostsPresentationLogicSpy!
  private var worker: PostsWorkingLogicSpy!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    let postsInteractor = PostsInteractor()
    let postsPresenter = PostsPresentationLogicSpy()
    let postsWorker = PostsWorkingLogicSpy()
    
    postsInteractor.presenter = postsPresenter
    postsInteractor.worker = postsWorker
    
    sut = postsInteractor
    presenter = postsPresenter
    worker = postsWorker
  }
  
  override func tearDown() {
    super.tearDown()
    
    sut = nil
    presenter = nil
    worker = nil
  }
  
  // MARK: - Public Methods
  
  func testFetchPosts() {
    let request = PostsModels.FetchPosts.Request()
    let user = User(id: 1, name: "Ivan", username: "ivan91")
    
    sut.user = user
    sut.fetchPosts(request)
    
    XCTAssertTrue(presenter.isCalledPresentFetchedPosts, "Not started presenter.presentFetchedPosts(:)")
    XCTAssertTrue(worker.isCalledFetchPosts, "Not started worker.fetchPosts(:)")
  }
}
