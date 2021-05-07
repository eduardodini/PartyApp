//
//  Discover.swift
//  PartyApp
//
//  Created by Eduardo Dini on 03/05/21.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    Section(title: "Os mais populares")
                    Section(title: "Recomendados para você")
                    Section(title: "Seus amigos também curtiram")
                    Section(title: "Experimente algo novo")
                }
                .navigationTitle("Descubra")
            }
        }
        .accentColor(.white)
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

struct EventCard: View {
    var body: some View {
        NavigationLink(destination: EventView()) {
            VStack {
                Spacer()
                HStack {
                    VStack {
                        Text("Abr".uppercased())
                            .foregroundColor(.purple)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text(String(format: "%02d", 1))
                            .font(.headline)
                    }
                    .padding(.trailing, 10)
                                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Copa BIXO 021")
                            .font(.headline)
                        
                        HStack {
                            Image(systemName: "mappin")
                            Text("Unicamp - 2km")
                        }
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238418579, green: 0.6000000238418579, blue: 0.6000000238418579, alpha: 1)))
                        .font(.caption)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("Curti")
                    }) {
                        Image(systemName: "heart")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                .background(Color.white)
            }
            .background(Color.gray.opacity(0.2))
            .cornerRadius(14)
            .padding(.bottom, 18)
            .padding(.trailing, -8)
            .padding(.leading)
            .shadow(color: .black.opacity(0.1), radius: 10)
            .frame(width: 274, height: 210)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct Section: View {
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    EventCard()
                    EventCard()
                }
            }
        }
        .padding(.top)
    }
}
