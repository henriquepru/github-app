//
//  ServiceResponse.swift
//  GitHubApp
//
//  Created by Henrique Santos on 04/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

enum ServiceError: Error {
    
    case fetchError
    case unknown(Error)
    
    var localizedDescription: String {
        switch self {
        case .fetchError:
            return "Ocorreu um erro"
        case .unknown(_):
            return "Ocorreu um erro desconhecido"
        }
    }
}

enum ServiceResponse<T> {
    
    case success(T)
    case error(ServiceError)
}
