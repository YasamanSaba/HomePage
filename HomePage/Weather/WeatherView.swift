//
//  WeatherView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 12/5/20.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        GeometryReader { geomtry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 9)
                    .foregroundColor(ColorPalette.summaryBackground)
                VStack {
                    HStack {
                        Image("HeavyRain")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geomtry.size.width * 0.263, height: geomtry.size.height * 0.409)
                            .padding(.leading, geomtry.size.width * 0.075)
                        
                        VStack(alignment: .leading) {
                            
                            Text("7 °C")
                                .font(.custom("gilroy-light", size: 15))
                                .foregroundColor(ColorPalette.dayFont)
                            
                            HStack {
                                Text("H: 7°")
                                    .font(.custom("gilroy-light", size: 11))
                                    .foregroundColor(ColorPalette.dayFont)
                                
                                Text("L: 5°")
                                    .font(.custom("gilroy-light", size: 11))
                                    .foregroundColor(ColorPalette.dayFont)
                            }
                        }
                    }
                    Text("Heavy Showers")
                        .font(.custom("gilroy-light", size: 11))
                        .foregroundColor(ColorPalette.dayFont)
                }
                
            }
            
        }
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .previewLayout(.sizeThatFits)
            .frame(width: 237.85, height: 139.35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
