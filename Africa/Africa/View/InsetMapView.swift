//
//  InsetMapView.swift
//  Africa
//
//  Created by LJh on 4/11/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
}
