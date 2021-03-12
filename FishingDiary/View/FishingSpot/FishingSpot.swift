//
//  FishingSpot.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/23.
//

import SwiftUI
struct FishingSpot: View {
    
    //    @State private var showingMap: Bool = false
    //    @State private var animationButton: Bool = false
    
    
    var body: some View {
                
        NavigationView {
            VStack {
                
                Spacer()
                
                NavigationLink(
                    destination: SpotRegister(),
                    label: {
                        HStack{
                            Spacer()
                            ZStack{
                                Circle()
                                    .fill(Color.blue)
                                    .opacity(0.2)
                                    .frame(width: 68, height: 68, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .background(Circle().fill(Color("ColorBase")))
                                    .frame(width: 48, height: 48, alignment: .center)
                            }
                            .padding(.bottom, 15)
                            .padding(.trailing, 15)
                        }
                    }
                )
            }
            .navigationBarTitle("Fishing spot", displayMode: .inline)
        }
    }
}

struct FishingSpot_Previews: PreviewProvider {
    static var previews: some View {
        FishingSpot()
    }
}
