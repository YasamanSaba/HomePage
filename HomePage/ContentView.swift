//
//  ContentView.swift
//  HomePage
//
//  Created by Yasaman Farahani Saba on 11/28/20.
//

import SwiftUI

struct ContentView: View {
    @State var eventsCount: Int = 6
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ColorPalette.mainBackground
                VStack {
                    HStack {
                    Image("CalnedarHeadIcon")
                        .resizable()
                        .scaledToFit()
                        Spacer()
                    Image("SettingIcon")
                        .resizable()
                        .scaledToFit()
                    }
                    .frame(width: geometry.size.width * 0.964, height: geometry.size.height * 0.074)

                    CalendarView()
                        .frame(width: geometry.size.width * 0.964, height: geometry.size.height * 0.082)
                    
                    
                    HStack {
                    WeatherView()
                        .frame(width: geometry.size.width * 0.304, height: geometry.size.height * 0.1)
                    SummaryProgressView()
                        .frame(width: geometry.size.width * 0.64 , height: geometry.size.height * 0.1)
                    }
                    
                    UpComingEventsView(eventsCount: $eventsCount)
                        .frame(height: geometry.size.height * 0.06)
                        .padding(5)
                    
                    VStack(spacing: 0) {
                    EventDate()
                        .frame(height: geometry.size.height * 0.05)
                        
                    
                    FirstEventView()
                        .frame(height: geometry.size.height * 0.093)
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                            .previewDisplayName("iPhone XS Max")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                            .previewDisplayName("iPhone SE")
        }
        
    }
}

struct MyView: View {
    var body: some View {
        GeometryReader { geo in
            RoundedRectangle(cornerRadius: 9)
                .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                    print("InnerGeo: w \(geo.size.width) : h \(geo.size.height)")
                    print("InnerGeo(.local): w \(geo.frame(in: .local).size.width) : h \(geo.frame(in: .local).size.height)")
                    print("InnerGeo(.global): w \(geo.frame(in: .global).size.width) : h \(geo.frame(in: .global).size.height)")
                })
        }
    }
}
