//
//  Post.swift
//  CleanSwifLab
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import Foundation

struct Post: Decodable {
  let userId: Int
  let id: Int
  let title: String
  let body: String
}
