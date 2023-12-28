//
//  MapsApp.swift
//  Maps
//
//  Created by Bruno Amorim on 28/12/23.
//

import SwiftUI

@main
struct MapsApp: App {
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
