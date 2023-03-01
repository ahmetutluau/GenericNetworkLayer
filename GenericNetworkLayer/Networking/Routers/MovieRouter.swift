//
//  MovieRouter.swift
//  GenericNetworkLayer
//
//  Created by Ahmet Utlu on 28.02.2023.
//

import Foundation
import Alamofire

enum MovieRouter: EndpointConfiguration {
    
    case popular
    case detail(Int)
    
    var method: HTTPMethod {
        switch self {
        case .popular:
            return .get
        case .detail:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .popular:
            return "/movie/popular"
        case .detail(let model):
            return "/movie/\(model)"
        }
    }
    
    var queryParameters: QueryStringParameters {
        switch self {
        case .popular,.detail:
            return ["api_key": "d01c48435a43627d2ac87bf0d9e756ee"]
        }
    }
    
    var httpBody: Data? {
        return nil
    }
    
    var headers: [CustomHTTPHeader]? {
        return nil
    }
}
