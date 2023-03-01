//
//  NetworkError.swift
//  GenericNetworkLayer
//
//  Created by Ahmet Utlu on 28.02.2023.
//

import Foundation

enum NetworkError {
    case noError
    case credentialsWrong
    case notConnectedInternet
    case serviceResponseFailed
    case conflictCredentials
    case emptyOrNil
    case authenticationLocked
    case notValidOtpCode
    case redirectAuth
}
