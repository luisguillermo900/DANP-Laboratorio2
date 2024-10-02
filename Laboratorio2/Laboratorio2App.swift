//
//  Laboratorio2App.swift
//  Laboratorio2
//
//  Created by epismac on 1/10/24.
//

import SwiftUI

@main
struct Laboratorio2App: App {
    @State var isLoggedin:Bool = false
    var body: some Scene {
        WindowGroup {
            //ContentView()
            
            if isLoggedin{
                HomeView()
            }else{
                LoginView(isLoggedin: $isLoggedin)
            }
        }
    }
}
