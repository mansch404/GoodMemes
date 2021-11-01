//
//  VideoView.swift
//  Go(o)dMemes
//
//  Created by Manuel Julian Asbeck on 01.11.21.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            LinearGradient(colors: [Color.green, Color.white, Color.white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack (alignment: .trailing) {
                Text("MemeTube")
                    .bold()
                    .font(.title2)
                    .padding(.horizontal)
                    .shadow(color: Color.white, radius: 15)
                Spacer()
                VStack {
                    Image(systemName: "heart")
                        .font(.title)
                        .padding(.bottom)
                    Image(systemName: "bookmark")
                        .font(.title)
                        .padding(.bottom)
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
