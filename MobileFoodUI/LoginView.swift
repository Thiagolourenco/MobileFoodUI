//
//  LoginView.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 26/02/24.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @AppStorage("isSign") private var isSign: Bool = true

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
                    
                    Text("Login Here")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                    
                    Text("Welcome back you have been missed!")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding([.leading], 32)
                        .padding([.trailing], 32)
                        .padding([.top], 8)
                    
                    Group {
                        TextField(text: $username) {
                            Text("username")
                                .font(.callout)
                        }
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal, 10)
                        .background(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.blue.opacity(0.7), lineWidth: 1)
                           )
                           .cornerRadius(8)
                           .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                   .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                           )
                        
                        SecureField(text: $password) {
                            Text("Password")
                                .font(.callout)
                        }
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal, 10)
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
                        isSign = true
                    } label: {
                        Text("LOGIN")
                            .foregroundStyle(.white)
                            .frame(width: 300)
                            .padding()
                    }
                    .background(.blue)
                    .frame(width: .infinity)
                    .cornerRadius(16)
                    .padding([.top])
                    
                    Button {
                        print("Forgot Password")
                    } label: {
                        Text("Forgot your password?")
                            .underline()
                    }
                    .padding([.top], 8)
                    .padding([.leading], 120)
                    
                    
                    Text("- Continue with -")
                        .padding([.top])
                    
                    HStack(spacing: 32) {
                        
                        Button {
                            print("GOOGLE")
                        } label: {
                            Text("G")
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                        }
                        
                        Button {
                            print("Facebook")
                        } label: {
                            Text("F")
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                        }
                        
                        Button {
                            print("Twitter")
                        } label: {
                            Text("T")
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                        }
                    }
                    .padding([.top], 8)
                    
                    HStack {
                        Text("Already have ac account ?")
                        Text("Sign in")
                            .foregroundStyle(.blue)
                    }
                    .padding()
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
