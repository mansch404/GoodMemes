//
//  MainView.swift
//  Go(o)dMemes
//
//  Created by Manuel Julian Asbeck on 21.10.21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                MemeTabView(showsMenuTab: true)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.75 , alignment: .top)
            .ignoresSafeArea()
            .navigationTitle("Go(o)d Memes")
        }
        .refreshable {
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
