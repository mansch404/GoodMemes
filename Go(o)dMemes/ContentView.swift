//
//  ContentView.swift
//  Go(o)dMemes
//
//  Created by Manuel Julian Asbeck on 15.09.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            SearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
            LikedView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Liked")
                    }
                }
            SavedView()
                .tabItem {
                    VStack {
                        Image(systemName: "bookmark")
                        Text("Saved")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
