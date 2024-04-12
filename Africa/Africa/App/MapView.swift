//
//  MapView.swift
//  Africa
//
//  Created by LJh on 4/4/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        
        var mapCoordinates = CLLocationCoordinate2D(latitude: 50.9, longitude: 15.4)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        
        Map(coordinateRegion: $region, annotationItems: locations) { item in
//            MapPin(coordinate: item.location, tint: .accent)
            
//            MapMarker(coordinate: item.location, tint: .accentColor)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32, alignment: .center)
            }
            
        }
    }
}

#Preview {
    MapView()
}
