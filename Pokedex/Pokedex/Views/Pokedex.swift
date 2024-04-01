//
//  ContentView.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import SwiftUI

struct Pokedex: View {
    
    @ObservedObject var pokemonvm = PokedexViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(pokemonvm.pokemonData) { pokemon in
                    NavigationLink {
                        PokemonDetail(pokemon : pokemon)
                    } label: {
                        Text(pokemon.name.capitalized)
                    }
                    
                }
                .listStyle(.grouped)
                .navigationTitle("Pokedex")
            }
        }
        
        .onAppear {
            pokemonvm.fetchData()
        }
        
    }
}
    
    #Preview {
        Pokedex()
    }

