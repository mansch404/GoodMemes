//
//  SearchView.swift
//  Go(o)dMemes
//
//  Created by Manuel Julian Asbeck on 21.10.21.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationView {
            VStack {}
                .navigationTitle("Search for Memes")
        }
        .searchable(text: $searchText) {
            Text("Z").searchCompletion("Hello")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
