//
//  MapView.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/28.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject
    var mvModel = MapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $mvModel.region,
            interactionModes: .all,
            showsUserLocation: true,
            userTrackingMode: .none,
            annotationItems: mvModel.mapItems) { item in
                MapPin(coordinate: item.coordinate
            )
        }.onTapGesture {
            mvModel.addPin()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
