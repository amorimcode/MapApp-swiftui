//
//  LocationsViewModel.swift
//  Maps
//
//  Created by Bruno Amorim on 28/12/23.
//

import Foundation
import MapKit


class LocationsViewModel: ObservableObject {
    
    // all loaded locations
    @Published var locations: [Location]
    
    // current location on the map
    @Published var mapLocation: Location {
        didSet {
            
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init () {
        let locations  = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    
    private func updateMapRegion(location: Location) {
        mapRegion = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan
        )
    }
}
