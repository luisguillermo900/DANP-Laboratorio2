//
//  LoginView.swift
//  Laboratorio2
//
//  Created by epismac on 1/10/24.
//
                
import SwiftUI

struct LoginView: View {
    @Binding var isLoggedin: Bool
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            VStack {
                Image("login")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                Button("Login", action: btnLogin)
                    .buttonStyle(.borderedProminent)

                NavigationLink(destination: CreateAccountView()) {
                    Text("Create my account")
                }
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(false)
        }
    }

    func btnLogin() {
        isLoggedin = true
    }
}
