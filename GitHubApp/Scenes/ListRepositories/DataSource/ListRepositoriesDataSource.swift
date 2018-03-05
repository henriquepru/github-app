//
//  ListRepositoriesDataSource.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

class ListRepositoriesDataSource: NSObject {
    
}

extension ListRepositoriesDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
