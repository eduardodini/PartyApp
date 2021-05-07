//
//  Onboarding.swift
//  PartyApp
//
//  Created by Eduardo Dini on 03/05/21.
//

import SwiftUI

//TODO: implementar navegação entre os cards do onboarding

struct OnboardingView: View {
    @State var currentPageIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            switch currentPageIndex {
            case 0:
                FirstPage()
            case 1:
                SecondPage()
            case 2:
                ThirdPage()
            default:
                Text("Error")
            }
            Spacer()
            if(currentPageIndex != 2){
                HStack {
                    Dots(pageIndex: currentPageIndex)
                        .padding()
                    Spacer()
                    Button(action: {
                        currentPageIndex += 1
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 21)
                                .fill(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                                .frame(width: 120, height: 42)
                            Text("Próximo")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .tracking(0.38)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding()
                }
            } else {
                HStack {
                    Dots(pageIndex: currentPageIndex)
                        .padding()
                        .padding(.bottom)
                    Spacer()
                }
            }
            
        }
    }
}

struct FirstPage: View {
    var body: some View {
        //Title
        VStack {
            Text("Bem-Vindo")
                .font(.system(size: 17, weight: .semibold))
                .padding(.bottom, 70)
            Image("party")
                .padding()
            Text("Seus Eventos num só Lugar")
                .font(.system(size: 22, weight: .semibold))
                .padding()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor. Tempor in neque sit ipsum vitae dolor.")
                .font(.system(size: 17, weight: .light))
                .padding()
        }
        .padding(20)

    }
}

struct SecondPage: View {
    @State var localizacao = ""
    
    var body: some View {
        VStack {
            Image("party2")
                .padding()
            Text("Encontre Eventos perto de você")
                .font(.system(size: 22, weight: .semibold))
                .padding()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor.")
                .font(.system(size: 17, weight: .light))
                .padding()
            
            VStack {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .padding(.trailing)
                    TextField("Localização", text: $localizacao)
                }
                .padding(.horizontal)
                Divider()
                    .padding(.horizontal, 40)
            }
            
            HStack {
                Image(systemName: "scope")
                    .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                Text("Usar localização atual")
                    .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                Spacer()
            }
            .padding()
        }
        .padding(20)
    }
}

struct ThirdPage: View {
    
    
    var body: some View {
        VStack{
            
            BlocoTexto()
                .padding()
            BlocoLogin()
                .padding()
            BlocoLoginAlternativo()
                .padding()
            
            VStack {
                Text("Não possui conta ainda?\n")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.21, blue: 0.21, alpha: 1)))
                Text("Cadastre-se")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                    .padding(.top, -20)
            }
            
            Text("Pular esta etapa")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .padding()
        
        }
//        .padding(.horizontal, 20)
    }
}




struct BlocoTexto: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Acompanhe os eventos que seus amigos estão curtindo")
                .font(.system(size: 22, weight: .semibold))
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat est sapien libero risus mauris tortor.")
                .font(.system(size: 17, weight: .light))
                .padding(.top)
        }
    }
}

struct BlocoLogin: View {
    @State var strings = ""
    var body: some View {
        VStack {
            VStack {
                TextField("Email", text: $strings)
                Divider()
                    .padding(.horizontal, -20)
            }
            VStack {
                TextField("Senha", text: $strings)
                Divider()
                    .padding(.horizontal, -20)
            }
            .padding(.bottom)
            Text("Esqueceu sua senha?")
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
            Button(action: {
                
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 21)
                        .fill(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                        .frame(width: 291, height: 42)
                    Text("Entrar")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.38)
                        .multilineTextAlignment(.center)
                }
            }
        }
        .padding(.horizontal, 30)
        
    }
}



struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct BlocoLoginAlternativo: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .center) {
                    Divider()
                }
                Text("Ou entre com")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)))
                    .background(Color.white)
                VStack {
                    Divider()
                }
            }
            .padding()
            HStack {
                Image("apple")
                    .clipShape(Circle())
                Image("google")
                    .clipShape(Circle())
                Image("facebook")
                    .clipShape(Circle())
                
            }
        }
    }
}

struct Dots: View {
    var pageIndex: Int
    
    var body: some View {
        VStack {
            switch pageIndex {
            case 0:
                Dots1()
            case 1:
                Dots2()
            case 2:
                Dots3()
            default:
                Text("Error")
            }
        }
        
    }
}

struct Dots1: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
            Circle()
                .frame(width: 10, height: 10, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .opacity(0.3)
            Circle()
                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .opacity(0.3)
        }
    }
}

struct Dots2: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .opacity(0.3)
            Circle()
                .frame(width: 10, height: 10, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
            Circle()
                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .opacity(0.3)
        }
    }
}

struct Dots3: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .opacity(0.3)
            Circle()
                .frame(width: 10, height: 10, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
                .opacity(0.3)
            Circle()
                .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.23, blue: 0.7, alpha: 1)))
        }
    }
}
