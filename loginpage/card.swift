//
//  card.swift
//  loginpage
//
//  Created by Praval Gautam on 14/03/23.
//

import SwiftUI
import Firebase

struct card: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        ZStack {
            VStack(spacing: 5){
                Text("Welcome")
                    .foregroundColor(Color.white)
                    .font(.system(size: 45, design: .default))
                    .offset(x:-80,y: -130)
                
                TextField("Email", text: $email)
                
                    .accentColor(.white)
                    .font(.system(size: 22))
                    .foregroundColor(Color.white)
                    .textFieldStyle(.plain)
                    .offset(x:40)
                
                Rectangle()
                    .frame(width: 270,height: 1)
                    .foregroundColor(.white)
                    .padding(.bottom,40)
                SecureField("Password", text: $password)
                    .accentColor(.white)
                    .font(.system(size: 22))
                    .foregroundColor(Color.white)
                    .textFieldStyle(.plain)
                    .offset(x:39)
                
                Rectangle()
                    .frame(width: 270,height: 1)
                    .foregroundColor(.white)
                
                Button(action: {
                 register()
                }, label: {
                    Text("SignUp")
                })
                .frame(width: 150.0, height: 40.0)
                .background(Color.white)
                .cornerRadius(38)
                .offset(y:30)
                
                Button(action: {
                    login()
                }, label: {
                    Text("Already have an account?")
                })
                .foregroundColor(.white)
                .offset(y:30)
            }
            
        }
        
        
        
        
        .frame(width: 350 ,height:810)
        .background(LinearGradient(colors: [.red,.blue], startPoint: .top, endPoint: .bottomTrailing))
    }
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Error signing up: \(error.localizedDescription)")
                return
            }}}
        func register(){
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
               if let error = error {
                 print("Error signing up: \(error.localizedDescription)")
                 return
                
            }
        }
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card()
    }
}
