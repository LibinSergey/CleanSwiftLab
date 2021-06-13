//
//  HomePresenter.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation

protocol HomePresentationLogic {
  func presentFetchedUsers(_ response: HomeModels.FetchUsers.Response)
}

final class HomePresenter: HomePresentationLogic {

  // MARK: - Public

  weak var viewController: HomeDisplayLogic?

  // MARK: - HomePresentationLogic

  func presentFetchedUsers(_ response: HomeModels.FetchUsers.Response) {
    let sortedUsers = response.users.sorted { $0.id < $1.id }
    let viewModel = HomeModels.FetchUsers.ViewModel(users: sortedUsers)

    viewController?.displayFetchedUsers(viewModel)
  }
}
