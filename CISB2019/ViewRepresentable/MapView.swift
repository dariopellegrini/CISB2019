//
//  MapView.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    
    let coordinates: (Double, Double)
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let region = MKCoordinateRegion( center: CLLocationCoordinate2D(
            latitude: coordinates.0, longitude: coordinates.1), latitudinalMeters: 0, longitudinalMeters: 1000)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
         MKMapView(frame: .zero)
    }
}
