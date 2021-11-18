//
//  SavedView.swift
//  Go(o)dMemes
//
//  Created by Manuel Julian Asbeck on 21.10.21.
//

import SwiftUI

struct SavedView: View {
    
    @State var CurrentState: String = "Saved"
    let States: [String] = [
        "Saved", "Liked"
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                Picker(selection: $CurrentState, content: {
                    ForEach(States.indices) { indice in
                        Text(States[indice])
                            .tag(States[indice])
                    }
                }, label: {
                    // no label
                })
                    .padding(.horizontal, 140)
                    .pickerStyle(SegmentedPickerStyle())
                    .navigationTitle("Saved Memes")
                
                switch(CurrentState) {
                case "Liked": EmptyView()
                case "Saved": EmptyView()
                default: EmptyView()
                }
                
                Spacer()
            }
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
