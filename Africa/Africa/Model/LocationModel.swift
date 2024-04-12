//
//  LocationModel.swift
//  Africa
//
//  Created by LJh on 4/12/24.
//

import Foundation
import MapKit

struct NationalParkLocation: Identifiable, Codable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
