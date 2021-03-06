//
//  Owner.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: URL
    
    private enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
    }
}
