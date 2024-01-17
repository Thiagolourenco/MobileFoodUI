//
//  Onboarding.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 17/01/24.
//

import SwiftUI

struct Onboarding: View {
    @AppStorage("isFirstTime") private var isFistTime: Bool = true
    
     var body: some View {
        VStack {
            
            Text("Bem Vindo ao App")
                .font(.title)
                .bold()
                .foregroundStyle(.white)
                .padding()
                
            
            HStack {
                Image(systemName: "birthday.cake.fill")
                    .font(.title)
                    .foregroundStyle(.gray.opacity(0.9))
                    .padding()
                Text("Peça os melhores bolos e doces para usa festa de aniversário")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                    .bold()
                    .padding([.top], 16)
                    .padding([.bottom], 16)
                    .padding([.trailing], 8)
                    
            }
            .frame(minWidth: 340, idealWidth: 0, maxWidth: 360, alignment: .center)
            .background(.gray.opacity(0.3))
            .cornerRadius(9)
            .padding()
            
            HStack {
                Image(systemName: "wineglass.fill")
                    .font(.title)
                    .foregroundStyle(.gray.opacity(0.9))
                    .padding()
                
                Text("Preça as melhores bebidas, de cerveja a refrigerante você encontra aqui")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                    .bold()
                    .padding([.top], 16)
                    .padding([.bottom], 16)
                    .padding([.trailing], 8)
            }
            .frame(minWidth: 340, idealWidth: 0, maxWidth: 360, alignment: .center)
            .background(.gray.opacity(0.3))
            .cornerRadius(9)
            .padding()
            
            HStack {
                Image(systemName: "fork.knife")
                    .font(.title)
                    .foregroundStyle(.gray.opacity(0.9))
                    .padding()
                
                Text("Peça os melhores comida, pratos executivos ou não venha para cá ")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                    .bold()
                    .padding()
            }
            .frame(minWidth: 340, idealWidth: 0, maxWidth: 360, alignment: .center)
            .background(.gray.opacity(0.3))
            .cornerRadius(9)
            .padding()
            
            Button(action: {
               isFistTime = false
            }, label: {
                Text("Continuar")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.black)
                    .background(.yellow)
                    .cornerRadius(16)
                    .padding([.top], 32)
                    .font(.title3)
                    .bold()
                    .padding()
            })
            
            
        }
        .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(.black)
    }
}

#Preview {
    Onboarding()
}
