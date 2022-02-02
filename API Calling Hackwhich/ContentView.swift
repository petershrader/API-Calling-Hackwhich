//
//  ContentView.swift
//  API Calling Hackwhich
//
//  Created by Student on 2/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
    }
    func getJokes() {
        let apiKey = "?rapidapi-key=1068cdde12msh7d4332b75ebd424p14524ejsn165dd7715f89"

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}
