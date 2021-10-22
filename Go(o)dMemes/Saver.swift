//
//  Saver.swift
//  Go(o)dMemes
//
//  Created by Manuel Julian Asbeck on 22.10.21.
//

import Foundation

class Saver {
    static let mainKey = "mkey"
    static let userDefaults = UserDefaults.standard
    
    static func setURL(url : URL) {
        userDefaults.set(url, forKey: mainKey)
    }
    
    static func getURL() -> URL {
        userDefaults.url(forKey: mainKey)!
    }
    
}
