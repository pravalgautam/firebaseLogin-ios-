//
//  loginpageApp.swift
//  loginpage
//
//  Created by Praval Gautam on 14/03/23.
//

import SwiftUI
import Firebase

@main
struct loginpageApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
