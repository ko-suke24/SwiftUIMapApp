//
//  SwiftUIMapAppApp.swift
//  SwiftUIMapApp
//
//  Created by RURU.jr on 2023/04/15.
//

import SwiftUI

@main
struct SwiftUIMapAppApp: App {
    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
