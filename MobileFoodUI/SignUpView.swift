//
//  SignUpView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 28/02/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State var password: String = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            ZStack() {
                Rectangle()
                    .fill(Color.blue.opacity(0.4))
                    .frame(width:400, height: 400, alignment: .top)
                    .cornerRadius(200)
                    .padding([.bottom])
                    .position(x: 400, y: 20)
                
                Rectangle()
                    .fill(Color.blue.opacity(0.4))
                    .frame(width:400, height: 400, alignment: .top)
                    .cornerRadius(200)
                    .padding([.bottom])
                    .position(x: 0, y: 800)
                
                
                VStack {
                    
                    Text("SignUp Here")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                        .padding(.top)
                    
                    Spacer()
                    
                    Group {
                        TextField(text: $username) {
                            Text("username")
                                .font(.callout)
                        }
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal, 10)
                        .textInputAutocapitalization(.never)
                        .background(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.blue.opacity(0.7), lineWidth: 1)
                           )
                           .cornerRadius(8)
                           .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                           )
                        
                        TextField(text: $username) {
                            Text("email")
                                .font(.callout)
                        }
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal, 10)
                        .textInputAutocapitalization(.never)
                        .background(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.blue.opacity(0.7), lineWidth: 1)
                           )
                           .cornerRadius(8)
                           .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                           )
                           .padding([.top])

                        
                        
                        SecureField(text: $password) {
                            Text("Password")
                                .font(.callout)
                        }
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal, 10)
                        .textInputAutocapitalization(.never)
                        .background(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.blue.opacity(0.7), lineWidth: 1)
                           )
                           .cornerRadius(8)
                           .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                           )
                        .padding([.top])
                        
                    }
                    .padding([.leading])
                    .padding([.trailing])
                    
                    
                    Button {
                        print("Username", username)
                        print("Password", password)
//                        isSign = true
                    } label: {
                        Text("SING UP")
                            .foregroundStyle(.white)
                            .frame(width: 300)
                            .padding()
                            .background(.blue)
                            .frame(width: .infinity)
                            .cornerRadius(16)
                    }
                    .padding([.top])
                    
                    
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Text("GO BACK LOGIN")
                            .foregroundStyle(.blue)
                            .frame(width: 300)
                            .padding()
                            .frame(width: .infinity)
                            .border(.blue, width:1)
                            .cornerRadius(16)

                    }
                    .padding([.top])
                
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignUpView()
}
