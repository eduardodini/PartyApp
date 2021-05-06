//
//  Profile.swift
//  PartyApp
//
//  Created by Eduardo Dini on 03/05/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       
        VStack {
            
            // primeiro bloco
            PrimeiroBloco()
            

            // segundo bloco
            SegundoBloco()

            TerceiroBloco()
            Spacer()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct PrimeiroBloco: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.5171164274215698, green: 0.2693576514720917, blue: 0.6041666865348816, alpha: 1)))
            
            Rectangle()
                .fill(RadialGradient(gradient: Gradient(stops: [
                                                            .init(color: Color(#colorLiteral(red: 0.887499988079071, green: 0.07765620946884155, blue: 0.7579250931739807, alpha: 0.23999999463558197)), location: 0),
                                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                     center: UnitPoint(x: 0.5000000119209294, y: 0.5000000087420146),
                                     startRadius: 0.9920573649347004,
                                     endRadius: 99.20573649347004
                ))
                .blendMode(.overlay)

            VStack {
                
                HStack {
                    Spacer()
                    Image(systemName: "pencil")
                    Image(systemName: "gear")
                }
                .foregroundColor(.white)
                
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    Circle()
                        .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 96, height: 96)
                
                Group {
                    Text("Nome Usuário")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.35)
                    Text("Campinas - SP")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)))
                        .padding(.bottom)
                }

                HStack {
                    VStack {
                        Text("22")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Text("Seguindo")
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)))
                    }
                    VStack {
                        Text("22")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Text("Seguidores")
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)))
                    }
                }
                
            }
            .padding(.init(top: 20, leading: 20, bottom: 20, trailing: 20))
            
        }
        .frame(width: 415, height: 314)
        .ignoresSafeArea()
    }
}

struct SegundoBloco: View {
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Histórico de eventos")
                    .font(.system(size: 17, weight: .semibold))
                Spacer()
            }

            HStack {
                VStack {
                    Text("42")
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                    Text("vou")
                        .font(.system(size: 17, weight: .semibold))
                }
                .padding()
                
                VStack {
                    Text("42")
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                    Text("curtidos")
                        .font(.system(size: 17, weight: .semibold))
                }
                .padding()
                
                VStack {
                    Text("42")
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                    Text("já fui")
                        .font(.system(size: 17, weight: .semibold))
                }
                .padding()
            }
        }
        .padding(.all)
    }
}

struct TerceiroBloco: View {
    var body: some View {
        VStack {
            HStack {
                Text("Categorias favoritas")
                    .font(.system(size: 17, weight: .semibold))
                Spacer()
            }

            CategoryView(category: "Esporte", number: "12", barSize: 100)
            CategoryView(category: "Esporte", number: "12", barSize: 160)
            CategoryView(category: "Esporte", number: "12", barSize: 160)
        }
        .padding(.all)
    }
}

struct CategoryView: View {
    var category: String
    var number: String
    var barSize: CGFloat
    
    var body: some View {
        HStack {
            Text(category)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
            Spacer()
            RoundedRectangle(cornerRadius: 21)
                .fill(Color(#colorLiteral(red: 0.6431580185890198, green: 0.22614583373069763, blue: 0.6958333253860474, alpha: 1)))
                .frame(width: barSize, height: 7)
            Spacer()
            Text(number)
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
        }
    }
}
