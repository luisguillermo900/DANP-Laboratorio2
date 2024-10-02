//
//  CreateAccountView.swift
//  Laboratorio2
//
//  Created by epismac on 1/10/24.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("New Account")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("First Name", text: $firstName)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.words)

            TextField("Last Name", text: $lastName)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.words)

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)

            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)

            Button(action: {
                
            }) {
                Text("Create Account")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

