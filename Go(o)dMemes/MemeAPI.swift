//
//  MemeAPI.swift
//  MemeAPI
//
//  Created by Manuel Julian Asbeck on 15.09.21.
//

import Foundation
import SwiftUI

struct MemeAPI {
    
    let intendedIndex: Int = 0

    static let shared = MemeAPI()
    private init() {}
    
    private let apiKey = "" // no API Key needed here
    private let session = URLSession.shared
    private let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
    
    func fetch() async throws -> Meme {
        return try await fetchInfos(from: generateNewsURL())
    }
    
    private func fetchInfos(from url: URL) async throws -> Meme {
        let (data, response) = try await session.data(from: url)
        guard let response = response as? HTTPURLResponse else {
            throw generateError(description: "Bad Response")
        }
        
        switch response.statusCode {
            
        case (200...299), (400...499):
            let apiResponse = try jsonDecoder.decode(Meme.self, from: data)
                return apiResponse
            
        default:
            throw generateError(description: "A server error occured")
        }
    }
    
    private func generateError(code: Int = 1, description: String) -> Error {
        NSError(domain: "NewsAPI", code: code, userInfo: [NSLocalizedDescriptionKey: description])
    }
    
    private func generateNewsURL() -> URL {
        URL(string: "https://meme-api.herokuapp.com/gimme")!
    }
}
