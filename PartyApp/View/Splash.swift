//
//  ContentView.swift
//  PartyApp
//
//  View reflects the model, is stateless and declaratibe.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
