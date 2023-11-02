//
//  NavigationTabView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 20/10/23.
//

import SwiftUI

struct NavigationTabView: View {
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Home")
                    }
                    
                
                NavigationStack{
                    CartView()
                }
                    .tabItem {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Carrinho")
                    }
                
                SettigsView()
                    .tabItem {
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Configurações")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Perfil")
                    }
            }
            .onAppear(){
                UITabBar.appearance().backgroundColor = .cyan
            }
            .accentColor(.indigo)
        }
        

    }
}

struct NavigationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabView()
    }
}
