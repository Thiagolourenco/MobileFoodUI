//
//  ProfileView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 20/10/23.
//

import SwiftUI

struct ProfileView: View {
    var listSettings = Utils.ListSettingsArray().list
    
    var body: some View {
        VStack() {
            HeaderView()
            
            VStack {
                Image("DishTwo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                Text("Thiago Lourenço")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
            }
            
            
            VStack {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 340, height: 150)
                    .cornerRadius(8)

                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Your subscription is Active unil day 27/02/2023")
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.black)
                        
                        Button("Editar") {
                            
                        }
                        .frame(width: 90, height: 35)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        
                        
                    }
                  
                    
                    Image(systemName: "circle.hexagongrid.fill")
                        .font(.title)
                        .foregroundColor(.black)
                }
                .padding([.top], -130)
                .padding([.leading], 40)
                .padding([.trailing], 40)
            }
            .padding([.top])
            .padding([.bottom])
            
            VStack {
                ForEach(listSettings) { result in
                    
                    HStack {
                        Text(result.name)
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    .padding([.bottom], 20)
                    .padding([.trailing], 16)
                    .padding([.leading], 16)
                }
            }
            
            Text("Version 3.0.4")
                .foregroundStyle(.gray)
                .font(.callout)
                .padding()
        }
        .frame(minHeight: 0, idealHeight: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()


    }
    
    struct HeaderView: View {
        var body: some View {
            HStack(alignment: .center) {
                Spacer()

                Text("Meu perfil")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding([.leading], 18)
            
                Spacer()
                
                Image(systemName: "bell.badge")
                    .foregroundStyle(.yellow, .gray)
                    .padding([.trailing], 16)
                    .foregroundColor(.gray)
                
                
            }
            .padding([.bottom], 32)
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
