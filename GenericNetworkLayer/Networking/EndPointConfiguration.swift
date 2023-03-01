//
//  EndPointConfiguration.swift
//  GenericNetworkLayer
//
//  Created by Ahmet Utlu on 28.02.2023.
//

import Foundation
import Alamofire

typealias QueryStringParameters = [String: String]?

protocol EndpointConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var queryParameters: QueryStringParameters { get }
    var httpBody: Data? { get }
    var headers: [CustomHTTPHeader]? { get }
}

extension EndpointConfiguration {
    func asURLRequest() throws -> URLRequest {
        let url = try (APIConstants.baseURL + path).asURL()
        
        var urlComponents = URLComponents(string: url.absoluteString)
        
        //Query Parameters
        urlComponents?.queryItems = queryParameters?.map { key, value in
            return URLQueryItem(name: key, value: value)
        }

        var urlRequest = URLRequest(url: (urlComponents?.url!)!)

        //HTTP Method
        urlRequest.httpMethod = method.rawValue

        //Headers
        headers?.forEach({ header in
            urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
        })

        //Parameters
        urlRequest.httpBody = httpBody

        return urlRequest
    }
}


