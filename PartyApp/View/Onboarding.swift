//
//  Onboarding.swift
//  PartyApp
//
//  Created by Eduardo Dini on 03/05/21.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        ThirdCard()
    }
}

struct FirstCard: View {
    var body: some View {
        VStack {
            Text("Bem-Vindo")
                .font(.system(size: 17, weight: .semibold))
                .tracking(-0.41)
                .multilineTextAlignment(.center)
                .padding()
            //TODO: imagem
            Circle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 340, height: 340)
                .padding()
            Text("Seus Eventos num só Lugar")
                .font(.system(size: 22, weight: .semibold))
                .tracking(0.35)
                .padding()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor. Tempor in neque sit ipsum vitae dolor.")
                .font(.system(size: 17, weight: .light))
                .tracking(-0.41)
                .padding()
            HStack{
                //TODO: action dos buttons (skip, next)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 21)
                            .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .frame(width: 120, height: 42)
                        Text("Skip")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .tracking(0.38)
                            .multilineTextAlignment(.center)
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 21)
                            .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .frame(width: 120, height: 42)
                        Text("Next")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .tracking(0.38)
                            .multilineTextAlignment(.center)
                    }
                }
            }
                
        }
        .padding()
    }
}

struct SecondCard: View {
    //FIXME: variavel criada para o código não quebrar
    @State private var localizacao: String = " "
    
    var body: some View {
        VStack {
            //TODO: imagem
            Circle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 277, height: 277)
            Text("Encontre Eventos perto de você")
                .font(.system(size: 28, weight: .semibold))
                .tracking(0.36)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor.")
                .font(.system(size: 17, weight: .regular))
                .tracking(-0.41)
            HStack {
                Text("📍")
                    .font(.system(size: 20, weight: .regular))
                    .tracking(-0.41)
                //TODO: textField -> pesquisa/define localização
                TextField("Localização", text: $localizacao)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
            }
            .padding()
            HStack {
                Text("🎯")
                    .font(.system(size: 20, weight: .regular))
                    .tracking(-0.41)
                //TODO: .onTapGesture -> pega localização atual
                Text("Usar localização atual")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))
                    .tracking(-0.41)
            }
            .padding()

            //TODO: action do button (next)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack {
                    RoundedRectangle(cornerRadius: 21)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 120, height: 42)
                    Text("Next")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.38)
                        .multilineTextAlignment(.center)
                }
            }
        }
        .padding()
    }
}

struct ThirdCard: View {
    
    //FIXME: variavel criada para o código não quebrar
    @State private var localizacao: String = " "
    
    var body: some View {
        VStack {
            Text("Acompanhe os eventos que seus amigos estão curtindo")
                .font(.system(size: 28, weight: .semibold))
                .tracking(0.36)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor.")
                .font(.system(size: 17, weight: .regular))
                .tracking(-0.41)
            
            //TODO: textField -> email e senha
            TextField("Email", text: $localizacao)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
            
            TextField("Senha", text: $localizacao)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
            
            Text("Esqueceu sua senha?")
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))
                .tracking(-0.41)
                .multilineTextAlignment(.center)
            
            //TODO: entrar button
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack {
                    RoundedRectangle(cornerRadius: 21)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 299, height: 42)
                    Text("Entrar")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.38)
                        .multilineTextAlignment(.center)
            }
            
            
            }
            ZStack {
                //FIXME: Olhar no Figma como deve ficar
                Divider()
                Text("Ou entre com")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.24, blue: 0.26, alpha: 0.72)))
                    .tracking(-0.41)
                    .multilineTextAlignment(.center)
            }
            HStack {
                //TODO: .onTapGesture Entrar com Apple/Google/Facebook
                //FIXME: Adicionar símbolo do Google e do Facebook
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 42, height: 42)
                    Text("")
                        .font(.system(size: 23, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.38).multilineTextAlignment(.center)
                }
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 42, height: 42)
                    Text("")
                        .font(.system(size: 23, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.38).multilineTextAlignment(.center)
                }
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 42, height: 42)
                    Text("")
                        .font(.system(size: 23, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.38).multilineTextAlignment(.center)
                }
            }

            Text("Não possui conta ainda?\n")
                .font(.system(size: 13, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.21, blue: 0.21, alpha: 1)))
                .tracking(-0.08) +
                //TODO: .onTapGesture -> cadastro
                Text("Cadastre-se")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))
                    .tracking(-0.08)
           
            //TODO: onTapGesture -> Skip
            Text("Pular esta etapa")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))
                .tracking(-0.41)
                .multilineTextAlignment(.center)

        }
        .padding()
    }
}



struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
