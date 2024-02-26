//
//  TabCustom.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 23/02/24.
//

import SwiftUI

struct TabCustom: View {
    @Binding var selected: Tab
    private var fillImage: String {
           selected.symbol + ".fill"
        }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Group {
                        Spacer()
                        VStack {
                            Image(systemName: selected == tab ? fillImage : tab.symbol)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(selected == tab ? .black : .gray)
                               
                            
                            Text(tab.rawValue)
                                .foregroundColor(selected == tab ? .black : .gray)
                                .font(.headline)
                                .padding([.top], -4)
                        }
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selected = tab
                            }
                        }
                        Spacer()
                    }
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel(Text("Tab \(tab.rawValue)"))
                  
                }
            }
            .padding([.top], 18)
            .padding([.bottom])
            .frame(width: .infinity, height: 60)
            .background(.thickMaterial)
        }
    }
}

struct TabCustom_Previews: PreviewProvider {
    static var previews: some View {
        TabCustom(selected: .constant(.house))
    }
}

