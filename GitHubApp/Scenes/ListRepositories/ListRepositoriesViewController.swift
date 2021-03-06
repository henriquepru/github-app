//
//  ListRepositoriesViewController.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

class ListRepositoriesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    fileprivate let dataSource = ListRepositoriesDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RepositoriesService().fetchRepositories { (response) in
            switch response {
            case .success(let repositories):
                print(repositories)
            case .error(let error):
                print(error.localizedDescription)
            }
        }
        
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
}

extension ListRepositoriesViewController: UITableViewDelegate { }
