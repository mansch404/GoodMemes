//
//  MemeViewModel.swift
//  MemeViewModel
//
//  Created by Manuel Julian Asbeck on 15.09.21.
//

import SwiftUI

enum DataFetchPhase<T> {
    
    case empty
    case success(T)
    case failure(Error)
}

struct FetchTaskToken: Equatable {
    var token: Date
}

@MainActor
class MemeViewModel: ObservableObject {
    
    @Published var phase = DataFetchPhase<Meme>.empty
    @Published var fetchTaskToken: FetchTaskToken
    private let memeAPI = MemeAPI.shared
    
    init(articles: Meme? = nil) {
        if let articles = articles {
            self.phase = .success(articles)
        } else {
            self.phase = .empty
        }
        self.fetchTaskToken = FetchTaskToken(token: Date())
    }
    
    func loadArticles() async {
        if Task.isCancelled { return }
        phase = .empty
        do {
            let articles = try await memeAPI.fetch()
            if Task.isCancelled { return }
            phase = .success(articles)
        } catch {
            if Task.isCancelled { return }
            print(error.localizedDescription)
            phase = .failure(error)
        }
    }
}
