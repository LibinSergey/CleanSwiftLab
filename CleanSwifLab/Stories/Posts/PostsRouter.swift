//
//  PostsRouter.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

protocol PostsRoutingLogic {

}

protocol PostsDataPassing {
  var dataStore: PostsDataStore? { get }
}

final class PostsRouter: PostsRoutingLogic, PostsDataPassing {

  // MARK: - Public Properties
  
  //
  
  // MARK: - Private Properties

  weak var viewController: PostsViewController?
  var dataStore: PostsDataStore?

  // MARK: - PostsRoutingLogic
  
  //

  // MARK: - Navigation
  
  //

  // MARK: - Passing data
  
  //
}
