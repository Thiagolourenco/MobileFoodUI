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
                
            CardView(imageSystem: "birthday.cake.fill", description: "Peça os melhores bolos e doces para usa festa de aniversário")
            
            CardView(imageSystem: "wineglass.fill", description: "Preça as melhores bebidas, de cerveja a refrigerante você encontra aqui")
            
            CardView(imageSystem: "fork.knife", description: "Peça os melhores comida, pratos executivos ou não venha para cá ")
          
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
    
    
    struct CardView: View {
        var imageSystem: String = ""
        var description: String = ""
        
        var body: some View {
            HStack {
               Image(systemName: imageSystem)
                   .font(.title)
                   .foregroundStyle(.gray.opacity(0.9))
                   .padding()
               
               Text(description)
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
        }
        
        
    }
}


#Preview {
    Onboarding()
}
