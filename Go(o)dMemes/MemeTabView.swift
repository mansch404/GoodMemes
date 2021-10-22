//
//  MemeTabView.swift
//  MemeTabView
//
//  Created by Manuel Julian Asbeck on 15.09.21.
//

import SwiftUI

struct MemeTabView: View {
    
    @StateObject public var articleNewsVM = MemeViewModel()
    
    var body: some View {
            MemeView(meme: articles)
                .overlay(overlayView)
                .onAppear {
                    Task.init(operation: {
                        await articleNewsVM.loadArticles()
                    })
                }
                .onTapGesture {
                    Task.init(operation: {
                        await articleNewsVM.loadArticles()
                    })
                }
        
        
    }
    
    @ViewBuilder
    private var overlayView: some View {
        
        switch articleNewsVM.phase {
        case .empty:
            ProgressView()
                .frame(height: 300)
        case .failure(let error):
            Text(error.localizedDescription)
            //            RetryView(text: error.localizedDescription, retryAction: refreshTask)
        default: EmptyView()
        }
    }
    
    private var articles: Meme {
        if case let .success(articles) = articleNewsVM.phase {
            return articles
        } else {
            return Meme(postLink: "", subreddit: "memes", title: "This is holup material", url: "", nsfw: false, spoiler: false, author: "thebunnyoffluff", ups: 4165, preview: ["one", "two"])
        }
    }
    
    @Sendable
    private func loadTask() async {
        await articleNewsVM.loadArticles()
    }
    
    @Sendable
    private func refreshTask() {
        DispatchQueue.main.async {
            articleNewsVM.fetchTaskToken = FetchTaskToken(token: Date())
        }
    }
}


