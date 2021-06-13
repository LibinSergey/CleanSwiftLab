//
//  HomePresenterTests.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import XCTest
@testable import CleanSwifLab

final class HomePresenterTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var sut: HomePresenter!
  private var viewController: HomeDisplayLogicSpy!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    let homePresenter = HomePresenter()
    let homeViewController = HomeDisplayLogicSpy()
    
    homePresenter.viewController = homeViewController
    
    sut = homePresenter
    viewController = homeViewController
  }
  
  override func tearDown() {
    sut = nil
    viewController = nil
    
    super.tearDown()
  }
  
  // MARK: - Public Methods
  
  func testPresentFetchedUsers() {
    let expectationFistId = 1
    let expectationLastId = 3
    let users = [
      User(id: 2, name: "Vasya", username: "vasya91"),
      User(id: 1, name: "Ivan", username: "ivan"),
      User(id: 3, name: "Maria", username: "maria_love")
    ]
    let response = HomeModels.FetchUsers.Response(users: users)
    
    sut.presentFetchedUsers(response)
    
    XCTAssertTrue(viewController.isCalledDisplayFetchedUsers, "Not started viewController.displayFetchedUsers(:)")
    XCTAssertEqual(viewController.users.first?.id, expectationFistId)
    XCTAssertEqual(viewController.users.last?.id, expectationLastId)
  }
}
