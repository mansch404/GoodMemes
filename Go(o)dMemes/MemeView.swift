//
//  MemeView.swift
//  MemeView
//
//  Created by Manuel Julian Asbeck on 15.09.21.
//

import SwiftUI

struct MemeView: View {
    
    var meme: Meme
    var showsMenu: Bool
    
    @State var memeC = MemeCL()
    
    var body: some View {
        AsyncImage(url: URL(string: meme.url)) { phase in
            switch phase {
            case .empty:
                HStack {
                    Spacer()
                    ProgressView()
                    Spacer()
                }
                .padding()
            case .success(let image):
                image
                    .resizable()
                    .clipped()
                    .scaledToFit()
            case .failure:
                HStack {
                    Spacer()
                    Image(systemName: "bookmark")
                        .font(.system(size: 58))
                    Spacer()
                }
            @unknown default:
                fatalError()
            }
        }
        if showsMenu {
        HStack {
            Button {
                meme.liked.toggle()
            } label: {
                HStack {
                    Spacer()
                    Image(systemName: "heart")
                        .symbolVariant(meme.liked ? .fill : .none)
                    
                    Spacer()
                }
                .padding(8)
                .background(.thinMaterial)
                .cornerRadius(20)
            }
            Button {
                meme.saved.toggle()
                print(meme.saved)
            } label: {
                HStack {
                    Spacer()
                    Image(systemName: "bookmark")
                        .symbolVariant(meme.saved ? .fill : .none)
                    Spacer()
                }
                .padding(8)
                .background(.thinMaterial)
                .cornerRadius(20)
            }
        }.onAppear {
            memeC.meme = meme
        }
        }
        
    }
}

struct MemeView_Previews: PreviewProvider {
    static var previews: some View {
        MemeView(meme: Meme(postLink: "https://redd.it/pok4sa", subreddit: "memes", title: "This is holup material", url: "https://i.redd.it/b2in1a1ivln71.jpg", nsfw: false, spoiler: false, author: "thebunnyoffluff", ups: 4165, preview: ["one", "two"]), showsMenu: true)
    }
}
