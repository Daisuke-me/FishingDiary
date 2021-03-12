//
//  MapViewModel.swift
//  FishingDiary
//
//  Created by daisuke on 2021/03/07.
//

import MapKit

final class MapViewModel: ObservableObject {
    
    @Published
    var mapItems: [MapItem] = []
    @Published
    var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 36.5,
                                           longitude: 139.8),
        span: MKCoordinateSpan(
            latitudeDelta: 0.05,
            longitudeDelta: 0.05))
    
    func addPin(){
        guard !duplicate() else { return }
        mapItems
            .append(
                MapItem(
                    coordinate:
                        CLLocationCoordinate2D(
                            latitude: region.center.latitude,
                            longitude: region.center.longitude)
        ))
    }
    
    private func duplicate() -> Bool {
        mapItems
            .contains(where: {
                $0.coordinate.latitude == region.center.latitude &&
                    $0.coordinate.longitude == region.center.longitude
            })
            ? true : false
    }
    
}
