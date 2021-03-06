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
            VideoView()
                .tabItem {
                    VStack {
                        Image(systemName: "video")
                        Text("Tube")
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
