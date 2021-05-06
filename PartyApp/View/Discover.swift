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
                VStack {
                    Section(title: "Os mais populares")
                    Section(title: "Recomendados para você")
                    Section(title: "Seus amigos também curtiram")
                    Section(title: "Experimente algo novo")
                }
                .navigationTitle("Descubra")
            }
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

struct EventCard: View {
    var body: some View {
        NavigationLink(destination: Event()) {
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
            .frame(width: 254, height: 192)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(14)
            .shadow(color: .black.opacity(0.1), radius: 24, y: 4)
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
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    EventCard()
                    EventCard()
                }
            }
        }
        .padding(.leading)
        .padding(.top)
    }
}
