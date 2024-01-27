//
//  ContentView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 05/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var search = ""
    var restaurants = Utils.RestaurantsFake().restaurants;
    var dishs = Utils.DishsFake().dishs
    
    var body: some View {
        VStack {
            
            ScrollView(showsIndicators: false) {
                // Header
                HeaderView()
                
                
                // Pesquisa
                SearchView(search: $search)
                
                // Restaurants
                RestaurantView(restaurants: restaurants)
                
                
                // Dish
                
                Dishview(dishs: dishs)
               
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .background(.white)
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("Logo")
            
            Spacer()
            
            VStack() {
                Text("Outubro, 30")
                    .font(.title3)
                    .bold()
                
                Text("Thiago Lourenço")
                    .font(.caption2)
                    .bold()
            }
            
            .frame(width: .infinity, height: .infinity, alignment: .leading)
            
            Image(systemName: "bell")
                .padding([.bottom], 12)
            
        }
        .padding()
    }
}

struct SearchView: View {
    @Binding var search: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField(
                    "Search Food",
                    text: $search
                )
                //                    .padding([.horizontal], 10)
                .autocorrectionDisabled(true)
                .autocapitalization(.none)
            }
            .frame(width: 230, height: 50)
            .padding([.leading])
            .background(.white)
            .shadow(color: .gray.opacity(0.4), radius: 10, x: 2, y: 2)
            
            
            Image(systemName: "line.3.horizontal.decrease.circle")
                .resizable()
                .frame(width: 15, height: 15)
                .padding()
                .background(.white)
                .shadow(color: .gray.opacity(0.4), radius: 10, x: 2, y: 2)
            Image(systemName: "heart")
                .resizable()
                .frame(width: 15, height: 15)
                .padding()
                .background(.white)
                .shadow(color: .gray.opacity(0.4), radius: 10, x: 2, y: 2)
        }
    }
}

struct RestaurantView: View {
    var restaurants: [Restaurant]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(restaurants) { value in
                        VStack {
                            Text(value.name)
                                .padding([.top], 8)
                                .padding([.trailing], 32)
                            
                            Image(value.image)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(120)
                                .position(x: 120, y: 60)
                        }
                        .frame(width: 150, height: 120)
                        .background(.orange.opacity(0.4))
                        .cornerRadius(8)
                        .clipped()
                      
                    }
                    
                }
                .padding([.top], 20)
                .padding([.leading], 20)
            }
            
            HStack {
                Text("Descrição Restaurante")
                    .font(.title3)
                    .padding([.top], 20)
                
                Spacer()
                ForEach(0..<2, id: \.self) { index in
                    Image(restaurants[index].image)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                        .padding([.top])
                       
                    
                }
              
                Text("+\(restaurants.count - 2)")
                    .foregroundColor(.white)
                    .frame(width: 40, height: 40, alignment: .center)
                    .background(.green)
                    .cornerRadius(20)
                    .padding([.top])
                   
                
                
            }
            
            .padding([.horizontal])
        }
    }
}

struct Dishview: View {
    var dishs: [Dish]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Pratos")
                .font(.title)
                .padding([.leading], 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(dishs) { value in
                        VStack(alignment: .leading) {
                            Image(value.image)
                                .resizable()
                                .frame(width:.infinity, height: 100)
                                .cornerRadius(5)
                          
                            
                            HStack() {
                                Text("R$ \(value.value)")
                                
                                Spacer()
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.yellow)
                                Text("\(value.stars)")
                                    .font(.caption)
                                
                            }
                            
                            Text("\(value.name) 280gm")
                                .font(.headline)
                            
                            Button {
                                print("OK")
                            } label: {
                                Text("Adicionar")
                                    .frame(width: 130, height: 30)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .background(.green)
                                
                                    .padding([.top])
                                    .padding([.leading])
                            }
                            
                        }
                        .frame(width: 160, height:.infinity)
                        .padding([.horizontal], 8)
                        
                        
                    }
                    
                }
                .padding([.top])
                .padding([.leading], 20)
            }
        }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
