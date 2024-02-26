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
    @State private var selected: Tab = .house
    
    var body: some View {
        ZStack(alignment: .bottom) {
                TabView(selection: $selected) {
                    ContentView()
                        .tag(Tab.house)
                        .gesture(DragGesture().onChanged({_ in }))
                    CartView(listOrderNew: mockListOrderNew)
                        .tag(Tab.cart)
                        .gesture(DragGesture().onChanged({_ in }))
                    SettigsView()
                        .tag(Tab.gear)
                        .gesture(DragGesture().onChanged({_ in }))
                    ProfileView()
                        .tag(Tab.person)
                        .gesture(DragGesture().onChanged({_ in }))
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .gesture(DragGesture().onChanged({_ in }))
                
                VStack {
                    TabCustom(selected: $selected)
                }
        }
        .edgesIgnoringSafeArea(.top)
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
