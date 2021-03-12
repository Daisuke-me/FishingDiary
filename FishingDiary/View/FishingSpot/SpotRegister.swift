//
//  SpotRegister.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/28.
//

import SwiftUI
import CoreLocation
import MapKit

struct MapItem: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}


struct SpotRegister: View {
            
    @StateObject
    var mvModel = MapViewModel()
    
    var body: some View {
        
        VStack {
            ZStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "hand.tap")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                })
                Map(coordinateRegion: $mvModel.region,
                    interactionModes: .all,
                    showsUserLocation: true,
                    userTrackingMode: .none,
                    annotationItems: mvModel.mapItems) { item in
                        MapPin(coordinate: item.coordinate
                    )
                }
            }
            Text("aaaa")
        }
    }
}

struct SpotRegister_Previews: PreviewProvider {
    static var previews: some View {
        SpotRegister()
    }
}
