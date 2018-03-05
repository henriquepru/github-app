//
//  RepositoriesService.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation
import Alamofire
import CodableAlamofire

struct RepositoriesService {
    private let urlString = "https://api.github.com/search/repositories?q=language:Swift"
    
    func fetchRepositories(page: Int = 1,
                           completion: @escaping ((ServiceResponse<[Repository]>) -> ())) {
        
        let parameters: Parameters = ["sort":"stars",
                                      "page": page]
        
        Alamofire.request(urlString,parameters: parameters)
            .responseDecodableObject(keyPath: "items",
                                     decoder: JSONDecoder()) {
            (response: DataResponse<[Repository]>) in
            
            switch response.result {
            case .success(let repositories):
                completion(.success(repositories))
            case .failure(_):
                completion(.error(.fetchError))
            }
        }
    }
}
