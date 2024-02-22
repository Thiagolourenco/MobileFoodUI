//
//  NavigationTabView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 20/10/23.
//

import SwiftUI

struct NavigationTabView: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    @State private var selectedTabView: Int = 0
    @State var mockListOrderNew = MockRequestsReturn()
    
    var body: some View {
        ZStack(alignment: .bottom) {
       
            
            TabView(selection: $selectedTabView) {
                ContentView()
                    .tag(0)
                CartView(listOrderNew: mockListOrderNew)
                    .tag(1)
                SettigsView()
                    .tag(2)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                ProfileView()
                    .tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .gesture(DragGesture().onChanged({_ in }))
            .ignoresSafeArea()
            
            HStack() {
                Spacer()
                
                Button(action: { selectedTabView = 0 }, label: {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.white)
                        
                 
                })
                Spacer()
                Button(action: { selectedTabView = 1 }, label: {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.white)
                })
                Spacer()
                Button(action: { selectedTabView = 2 }, label: {
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.white)
                    
                   
                })
                
                Spacer()
                
                Button(action: { selectedTabView = 3}, label: {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.white)
                        
                    
                })
                Spacer()
            }
            .frame(height: 60)
            .background(.black)
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 2)
                .padding([.top], -60)
        
        }
        .gesture(DragGesture().onChanged({_ in }))
        .sheet(isPresented: $isFirstTime, content: {
            Onboarding().interactiveDismissDisabled()
        })
    }
}

struct NavigationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabView()
    }
}
