//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import SwiftUI

struct PokemonDetail: View {
    
    var pokemon : Pokemon
     
    var body: some View {
        VStack {
            ImageCardView(pokemon: pokemon)
            Text(pokemon.name.capitalized)
                .font(.largeTitle)
            
        }
    }
}

