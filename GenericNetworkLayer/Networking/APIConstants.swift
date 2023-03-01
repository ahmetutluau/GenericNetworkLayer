//
//  APIConstants.swift
//  GenericNetworkLayer
//
//  Created by Ahmet Utlu on 28.02.2023.
//

import UIKit

struct APIConstants {
    static var baseURL: String {
        return "https://api.themoviedb.org/3"
    }
}

enum CustomHTTPHeader: String {
    case authentication
    case contentType
    case multiPart
    case deviceId
    case deviceType
    
    var key: String {
        switch self {
        case .authentication: return "Authorization"
        case .contentType: return "Content-Type"
        case .multiPart: return "Content-Type"
        case .deviceId: return "DeviceId"
        case .deviceType: return "DeviceType"
        }
    }
    
    var value: String {
        switch self {
        case .authentication: return "Bearer"
        case .contentType: return "application/json"
        case .multiPart: return "multipart/form-data"
        case .deviceId: return UIDevice.current.identifierForVendor!.uuidString
        case .deviceType: return "2"
        }
    }
}
