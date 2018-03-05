//
//  Repository.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

struct Repository: Codable {
    let name: String
    let description: String
    let forks: Int
    let stargazersCount: Int
    let owner: User
    
    private enum CodingKeys: String, CodingKey {
        case name
        case description
        case forks
        case stargazersCount = "stargazers_count"
        case owner
    }
}
