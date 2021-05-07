//
//  ContentView.swift
//  PartyApp
//
//  View reflects the model, is stateless and declaratibe.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.init(red: 130/255, green: 69/255, blue: 154/255, opacity: 100)
                .ignoresSafeArea()
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("ENCONTRE FESTAS E EVENTOS")
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .tracking(0.35)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
