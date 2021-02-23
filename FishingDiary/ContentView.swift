//
//  ContentView.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Home().tabItem{
                Image(systemName: "house")
                    .font(.system(size: 30))
                    .padding()
            }.tag(1)
            FishingSpot().tabItem { Image(systemName: "restart.circle")
                .font(.system(size: 30))
                .padding()
            }.tag(2)
            Streaming().tabItem { Image(systemName: "wifi")
                .font(.system(size: 30))
                .padding()
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
