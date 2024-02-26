//
//  MobileFoodUIApp.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 05/10/23.
//

import SwiftUI

@main
struct MobileFoodUIApp: App {
    @AppStorage("isSign") private var isSign: Bool = false

    var body: some Scene {
        WindowGroup {
                if isSign {
                    NavigationTabView()
                } else {

                    LoginView()
                }

        }
    }
}
