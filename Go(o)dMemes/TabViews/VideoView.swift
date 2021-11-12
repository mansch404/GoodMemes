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
            // TODO: Set Video here
            VStack (alignment: .trailing) {
                Text("MemeTok")
                    .bold()
                    .font(.title2)
                    .padding(.horizontal)
                    .shadow(color: Color.white, radius: 15)
                Spacer()
                VStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .font(.title)
                            .padding(.bottom)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                            .font(.title)
                            .padding(.bottom)

                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }

                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
