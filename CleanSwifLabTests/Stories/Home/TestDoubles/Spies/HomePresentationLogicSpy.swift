//
//  HomePresentationLogicSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation
@testable import CleanSwifLab

final class HomePresentationLogicSpy: HomePresentationLogic {
  
  // MARK: - Public Properties
  
  private(set) var isCalledPresentFetchedUsers = false
  
  // MARK: - Public Methods
  
  func presentFetchedUsers(_ response: HomeModels.FetchUsers.Response) {
    isCalledPresentFetchedUsers = true
  }
}
