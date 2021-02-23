//
//  Home.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 0){
            HeaderView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
