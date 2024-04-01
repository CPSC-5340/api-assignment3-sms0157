//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import SwiftUI

struct PokemonDetail: View {
    
    @ObservedObject var pokemonvm = PokedexViewModel()
    
    var pokemon : Pokemon
     
    var body: some View {
        VStack {
            ImageCardView(pokemon: pokemon)
            Spacer()
                .frame(height: 50)
            Text(pokemon.name.capitalized)
                .font(.largeTitle)
            Text("# ")
                .bold()
            + Text(String(format: "%03d", pokemonvm.pokemonDetailData.id))
            Spacer()
                .frame(height: 20)
            Text("Weight: ")
                .bold()
            + Text(String(pokemonvm.pokemonDetailData.weight/10) + " KG")
            Text("Height: ")
                .bold()
            + Text(String(pokemonvm.pokemonDetailData.height*10) + " CM")
            
            
            
        }
        .onAppear {
            pokemonvm.fetchDataDetails(id: pokemon.id!)
        }
    }
}

