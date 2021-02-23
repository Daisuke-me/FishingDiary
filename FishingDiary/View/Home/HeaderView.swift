//
//  HeaderView.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        HStack {
            Spacer()
            HStack(spacing: 4) {
                Text("Fishing")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                Text("Diary")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
            }
            
            Spacer()
        }
        .frame(height: 45.0)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
