//
//  Location.swift
//  SwiftUIMapApp
//
//  Created by RURU.jr on 2023/04/15.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String

    var id: String {
        name + cityName
    }
}
