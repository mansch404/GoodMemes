//
//  MemeDEC.swift
//  MemeDEC
//
//  Created by Manuel Julian Asbeck on 15.09.21.
//

import Foundation
import SwiftUI

struct Meme : Decodable {
    
    let postLink: String
    let subreddit: String
    let title: String
    let url: String
    let nsfw: Bool
    let spoiler: Bool
    let author: String
    let ups: Int
    let preview: [String]
    let liked: Bool = false
    let saved: Bool = false
    
    private enum CodingKeys: String, CodingKey { case postLink, subreddit, title, url, nsfw, spoiler, author, ups, preview }
    
}
