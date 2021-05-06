//
//  Event.swift
//  PartyApp
//
//  Created by Eduardo Dini on 03/05/21.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        ScrollView {
            VStack {
            // HEADER
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Copa BIXO 021")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        HStack {
                            CategoryPill()
                            CategoryPill()
                        }
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 4) {
                        Image(systemName: "heart")
                            .font(.title)
                        Text("102")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .foregroundColor(.white)
                .padding()
                .frame(height: 315, alignment: .bottom)
                .background(Color.gray)
                
                // SEÇÃO DESCRIÇÃO
                VStack(alignment: .leading, spacing: 8) {
                    Text("Descrição")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique mi fringilla tellus mauris mattis egestas volutpat. Risus sodales ridiculus tortor, porttitor laoreet eget diam, volutpat facilisis. Massa nibh commodo.")
                }
                .padding()
                
                // SEÇÃO INFORMAÇÕES
                VStack(alignment: .leading, spacing: 8) {
                    Text("Insformações")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        VStack(spacing: 15) {
                            Image(systemName: "mappin")
                            Image(systemName: "calendar")
                        }
                        .font(.title2)
                        .foregroundColor(.purple)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            VStack(alignment: .leading) {
                                Text("UNICAMP")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                Text("Cidade Universitária Zeferino Vaz - Barão Geraldo, Campinas - SP, 13083-970")
                                    .lineLimit(1)
                                    .font(.caption)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238418579, green: 0.6000000238418579, blue: 0.6000000238418579, alpha: 1)))
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Sábado, 1 de abril de 2022")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                Text("Duração de 3 dias, até dia 4 de abril de 2022")
                                    .lineLimit(1)
                                    .font(.caption)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238418579, green: 0.6000000238418579, blue: 0.6000000238418579, alpha: 1)))
                            }
                        }
                    }
                }
                .padding()
                
                // ORGANIZADOR
                VStack(spacing: 16) {
                    Image(systemName: "person")
                        .font(.system(size: 64))
                        .foregroundColor(.white.opacity(0.5))
                        .frame(width: 142, height: 142)
                        .background(Circle().fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1))))
                    VStack(spacing: 4) {
                        Text("Liga das Atléticas da Unicamp")
                            .font(.headline)
                        Text("Organizador verificado")
                            .font(.caption)
                    }
                
                    Button(action: {}) {
                        Text("Seguir")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal, 96)
                            .padding(.vertical, 8)
                            .background(RoundedRectangle(cornerRadius: 21).fill(Color.purple))
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding()
                
                Section(title: "Você também pode gostar")
            }
        }
        .ignoresSafeArea()
        .navigationBarItems(
            trailing: HStack(spacing: 10) {
                Button(action: {}) {
                    Image(systemName: "bell")
                        .font(.title3)
                }
                
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title3)
                }
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.white)
        )
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}

struct CategoryPill: View {
    var body: some View {
        Text("Categoria")
            .foregroundColor(.white)
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .background(RoundedRectangle(cornerRadius: 21).opacity(0.25))
    }
}
