//
//  Onboarding.swift
//  PartyApp
//
//  Created by Eduardo Dini on 03/05/21.
//

import SwiftUI

//TODO: implementar navegação entre os cards do onboarding

struct OnboardingView: View {
    var body: some View {
        ThirdCard()
    }
}

struct FirstCard: View {
    var body: some View {
        VStack {
            Text("Bem-Vindo")
                .font(.system(size: 17, weight: .semibold))
                .padding()
            
            //TODO: imagem
            Circle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 340, height: 340)
                .padding()
            Text("Seus Eventos num só Lugar")
                .font(.system(size: 22, weight: .semibold))
                .padding()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor. Tempor in neque sit ipsum vitae dolor.")
                .font(.system(size: 17, weight: .light))
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

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor.")
                .font(.system(size: 17, weight: .regular))
            
            HStack {
                Image(systemName: "mappin.and.ellipse")
                //TODO: textField -> pesquisa/define localização
                TextField("Localização", text: $localizacao)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .disableAutocorrection(true)
            }
            .underlineTextField()
            .padding()
            
            HStack {
                
                Image(systemName: "target")
                //TODO: .onTapGesture -> pega localização atual
                Text("Usar localização atual")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))

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
                }
            }
        }
        .padding(20)
    }
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .padding(10)
    }
}

struct ThirdCard: View {
    
    //FIXME: variavel criada para o código não quebrar
    @State private var localizacao: String = " "
    
    var body: some View {
        
        VStack {
            Text("Acompanhe os eventos que seus amigos estão curtindo")
                .font(.system(size: 28, weight: .semibold))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor.")
                .font(.system(size: 17, weight: .regular))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
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

            //TODO: entrar button
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack {
                    RoundedRectangle(cornerRadius: 21)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 299, height: 42)
                    Text("Entrar")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
            
            }
            ZStack {
                //FIXME: Olhar no Figma como deve ficar
                Divider()
                Text("Ou entre com")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.24, blue: 0.26, alpha: 0.72)))
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
                }
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 42, height: 42)
                    Text("")
                        .font(.system(size: 23, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 42, height: 42)
                    Text("")
                        .font(.system(size: 23, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
            }

            Text("Não possui conta ainda?\n")
                .font(.system(size: 13, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.21, blue: 0.21, alpha: 1))) +
                //TODO: .onTapGesture -> cadastro
                Text("Cadastre-se")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))
           
            //TODO: onTapGesture -> Skip
            Text("Pular esta etapa")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.48, blue: 1, alpha: 1)))

        }
        .padding()
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
