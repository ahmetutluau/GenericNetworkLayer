//
//  String+Ext.swift
//  GenericNetworkLayer
//
//  Created by Ahmet Utlu on 28.02.2023.
//

import Foundation

extension String {
    public func convertToDictionary() -> [String: Any]? {
        if let data = data(using: .utf8) {
            return try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        }
        return nil
    }
}
