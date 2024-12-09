//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(Shop())
        }
    }
}
