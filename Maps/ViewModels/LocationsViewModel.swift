//
//  LocationsViewModel.swift
//  Maps
//
//  Created by Bruno Amorim on 28/12/23.
//

import Foundation


class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init () {
        let locations  = LocationsDataService.locations
        self.locations = locations
    }
}
