//
//  TableViewSpy.swift
//  CleanSwifLabTests
//
//  Created by Sergey Libin 10/06/2021.
//  Copyright © 2021 Sergey Libin. All rights reserved.
//

import UIKit

final class TableViewSpy: UITableView {
  
  // MARK: - Public Properties
  
  private(set) var isCalledReloadData = false
  
  // MARK: - Public Methods
  
  override func reloadData() {
    super.reloadData()
    isCalledReloadData = true
  }
}
