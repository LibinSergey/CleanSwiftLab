//
//  HomeInteractorTests.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import XCTest
@testable import CleanSwifLab

final class HomeInteractorTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var sut: HomeInteractor!
  private var worker: HomeWorkingLogicSpy!
  private var presenter: HomePresentationLogicSpy!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    let homeInteractor = HomeInteractor()
    let homeWorker = HomeWorkingLogicSpy()
    let homePresenter = HomePresentationLogicSpy()
    
    homeInteractor.worker = homeWorker
    homeInteractor.presenter = homePresenter
    
    sut = homeInteractor
    worker = homeWorker
    presenter = homePresenter
  }
  
  override func tearDown() {
    sut = nil
    worker = nil
    presenter = nil
    
    super.tearDown()
  }
  
  // MARK: - Public Methods
  
  func testFetchUsers() {
    let request = HomeModels.FetchUsers.Request()
    
    sut.fetchUsers(request)
    
    XCTAssertTrue(worker.isCalledFetchUsers, "Not started worker.fetchUsers(:)")
    XCTAssertTrue(presenter.isCalledPresentFetchedUsers, "Not started presenter.presentFetchedUsers(:)")
    XCTAssertEqual(sut.users.count, worker.users.count)
  }
  
  func testSelectUser() {
    let expectationId = 2
    let expectationName = "Vasya"
    let users = [
      User(id: 1, name: "Ivan", username: "ivan"),
      User(id: 2, name: "Vasya", username: "vasya91"),
      User(id: 3, name: "Maria", username: "maria_love")
    ]
    let request = HomeModels.SelectUser.Request(index: 1)
    
    sut.users = users
    sut.selectUser(request)
    
    XCTAssertNotNil(sut.selectedUser, "User not selected")
    XCTAssertEqual(sut.selectedUser?.id, expectationId)
    XCTAssertEqual(sut.selectedUser?.name, expectationName)
  }
}
