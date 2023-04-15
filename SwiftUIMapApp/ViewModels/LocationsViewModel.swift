//
//  LocationsViewModel.swift
//  SwiftUIMapApp
//
//  Created by RURU.jr on 2023/04/15.
//

import Foundation
import SwiftUI
import MapKit

class LocationsViewModel: ObservableObject {

    @Published var locations: [Location]
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()

    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)

    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!

        self.updateMapRegion(location: locations.first!)
    }
    private func updateMapRegion(location: Location) {
        withAnimation(.easeOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
}
