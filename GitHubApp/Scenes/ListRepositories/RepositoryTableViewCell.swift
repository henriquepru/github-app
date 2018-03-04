//
//  RepositoryTableViewCell.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

class RepositoryTableViewCell: UITableViewCell {
    @IBOutlet weak var repositoryNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerUserNameLabel: UILabel!
    @IBOutlet weak var ownerFullNameLabel: UILabel!
    @IBOutlet weak var forksCountLabel: UILabel!
    @IBOutlet weak var starsCountLabel: UILabel!
    
}
