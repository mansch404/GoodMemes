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
            VStack {
                ForEach(0..<5) { _ in
                HStack {
                    ForEach(0..<3) { x in
                        MemeTabView(showsMenuTab: false)
                            .frame(width: UIScreen.main.bounds.width / 3.1, height: UIScreen.main.bounds.width / 3.1)
                    }
                }
            }
            }.padding(.top)
            
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
