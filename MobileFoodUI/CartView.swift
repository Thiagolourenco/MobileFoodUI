//
//  CartView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 20/10/23.
//

import SwiftUI

struct CartView: View {
    @State var listOrder = [0, 1, 2]
    @State var teste: Int = 0;
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                ScrollView {
                    VStack {
                        ForEach(0..<3) { value in
                            VStack() {
                                
                                HStack {
                                    Rectangle()
                                        .fill()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(16)
                                        .padding([.trailing])
                                    
                                    VStack(alignment: .leading) {
                                        Text("Beff Burger")
                                            .font(.title3)
                                        
                                        Text("Classic Beff Burger")
                                            .font(.subheadline)
                                        
                                        Button {
                                            print("OPA")
                                        } label: {
                                            Text("Side Meals")
                                                .frame(width: 100, height: 30)
                                                .font(.subheadline)
                                                .foregroundColor(.orange)
                                                .background(.orange.opacity(0.2))
                                            
                                        }
                                        .cornerRadius(30)
                                    }
                                    
                                    
                                    VStack(alignment: .center) {
                                        Text("75 EGP")
                                            .font(.headline)
                                            .padding([.bottom])
                                        
                                        HStack {
                                            Button {
                                                print("REMOVE")
                                            } label: {
                                                Image(systemName: "minus")
                                                    .foregroundColor(.white)
                                                    .frame(width: 20, height: 20)
                                                    .background(.orange)
                                                    .cornerRadius(15)
                                            }
                                            
                                            Text("\(teste)")
                                            
                                            Button {
                                                teste += 1
                                            } label: {
                                                Image(systemName: "plus")
                                                
                                                    .foregroundColor(.white)
                                                    .frame(width: 20, height: 20)
                                                    .background(.orange)
                                                    .cornerRadius(15)
                                                
                                            }
                                        }
                                        .frame(width: 80, height: 30)
                                        .background(.orange.opacity(0.2))
                                        .cornerRadius(40)
                                        
                                        
                                    }
                                    
                                    
                                }
                            }
                        }
                        .padding()
                        .frame(minWidth: 0, maxWidth: 360, alignment: .center)
                        .background(.white)
                        .border(.gray.opacity(0.2))
                        .cornerRadius(20)
                        .shadow(radius: 5.0)
                        .padding([.top], 8)
                        .padding([.trailing], 16)
                        
                        
                    }
                    .padding([.leading])
                    
                    VStack(alignment: .leading) {
                        Text("coupon")
                            .bold()
                            .padding([.leading])
                        
                        HStack {
                            Image(systemName: "giftcard.fill")
                                .foregroundColor(.orange)
                                .frame(width: 40, height: 30)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(2)
                            
                            HStack() {
                                VStack(alignment: .leading) {
                                    Text("YEG you saved 20 EGP")
                                    Text("Coupon Applied")
                                }
                                
                                Image(systemName: "xmark")
                            }
                            .padding([.top], 5)
                            .padding([.leading], 8)
                            .padding([.trailing], 8)
                            .padding([.bottom], 5)
                            .background(.orange.opacity(0.4))
                            .cornerRadius(5)
                            .padding([.leading])
                            
                        }
                        .padding([.leading])
                        
                        
                        
                        Rectangle()
                            .fill(.gray.opacity(0.5))
                            .frame(width: .infinity, height: 1)
                            .padding()
                    }
                    
                    .padding([.top])
                    
                    VStack {
                        HStack {
                            Text("Subtotal")
                            Spacer()
                            Text("250 EGP")
                        }
                        .padding([.top])
                        .padding([.leading])
                        .padding([.trailing])
                        .padding([.bottom], 4)
                        
                        HStack {
                            Text("Shipping fee")
                            Spacer()
                            Text("20 EGP")
                        }
                        .padding([.top])
                        .padding([.leading])
                        .padding([.trailing])
                        .padding([.bottom], 4)
                        
                        HStack {
                            Text("coupon Discount")
                            Spacer()
                            Text("(-)20 EGP")
                        }
                        .padding([.top])
                        .padding([.leading])
                        .padding([.trailing])
                        .padding([.bottom], 6)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.5))
                            .frame(width: .infinity, height: 1)
                        
                        HStack {
                            Text("Subtotal")
                            Spacer()
                            Text("255 EGP")
                        }
                        .padding([.top])
                        .padding([.leading])
                        .padding([.trailing])
                        .padding([.bottom], 32)
                        
                    }
                    //            .padding()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding([.leading])
                    .padding([.trailing])
                    
                    
                    Button {
                        print("Checkout")
                    } label: {
                        Text("Checkout")
                            .foregroundColor(.white)
                    }
                    .padding([.top])
                    .padding([.bottom])
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .background(.orange)
                    .cornerRadius(32)
                    .padding([.top])
                    .padding([.leading], 32)
                    .padding([.trailing], 32)
                    .padding([.bottom], 12)
                    
                    
                }
            }
            
        }
        .navigationTitle("Cart")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: backButton)
    }
    
    var backButton: some View {
           Button(action: {
               presentationMode.wrappedValue.dismiss()
           }) {
               HStack {
                   Image(systemName: "chevron.left")
                       .foregroundColor(.black)
               }
           }
       }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CartView()
        }
    }
}
