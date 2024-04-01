//
//  ImageCardView.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/30/24.
//

import SwiftUI

struct ImageCardView: View {
    
    let pokemon : Pokemon
    
    var body: some View {
        AsyncImage(url: pokemon.imageURL) { image in
            image.resizable()
        }placeholder: {
            ProgressView()
        }
        .frame(width: 200, height: 200)
        
    }
}

struct ImageCardView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCardView(pokemon: Pokemon(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"))
    }
}

